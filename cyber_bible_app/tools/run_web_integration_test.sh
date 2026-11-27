#!/usr/bin/env bash

# Runs a Flutter Web integration test with a ChromeDriver matched to the
# selected Chrome binary. A local ChromeDriver started here is stopped on exit;
# an already-running compatible server is reused and left untouched.
set -euo pipefail

APP_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TEST_TARGET="${1:-integration_test/bible_database_migrator_web_test.dart}"
DRIVER_PORT="${CHROMEDRIVER_PORT:-4444}"
DRIVER_PID=""
DRIVER_LOG=""

# Prints a clear setup error and stops before launching an incompatible test.
fail() {
  printf 'Web integration test setup error: %s\n' "$1" >&2
  exit 1
}

# Extracts a four-part Chrome version from Chrome or ChromeDriver output.
version_from_output() {
  printf '%s\n' "$1" | grep -Eo '[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+' | head -n 1 || true
}

# Finds the Chrome executable or validates an explicit CHROME_BINARY override.
find_chrome_binary() {
  if [[ -n "${CHROME_BINARY:-}" ]]; then
    [[ -x "$CHROME_BINARY" ]] || fail "CHROME_BINARY is not executable: $CHROME_BINARY"
    printf '%s\n' "$CHROME_BINARY"
    return
  fi

  for command_name in google-chrome google-chrome-stable chromium chromium-browser; do
    if command -v "$command_name" >/dev/null 2>&1; then
      command -v "$command_name"
      return
    fi
  done

  local mac_chrome="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
  if [[ -x "$mac_chrome" ]]; then
    printf '%s\n' "$mac_chrome"
    return
  fi

  fail "Chrome was not found. Install Chrome or set CHROME_BINARY to its executable path."
}

# Finds an explicitly selected or PATH-installed ChromeDriver executable.
find_chromedriver_binary() {
  if [[ -n "${CHROMEDRIVER_BINARY:-}" ]]; then
    [[ -x "$CHROMEDRIVER_BINARY" ]] ||
      fail "CHROMEDRIVER_BINARY is not executable: $CHROMEDRIVER_BINARY"
    printf '%s\n' "$CHROMEDRIVER_BINARY"
    return
  fi

  command -v chromedriver || true
}

# Returns the version reported by a running WebDriver server, if one is ready.
running_driver_version() {
  local response
  response="$(curl --fail --silent --max-time 1 "$DRIVER_URL/status" 2>/dev/null || true)"
  [[ -n "$response" ]] || return 1
  version_from_output "$response"
}

# Cleans up only the driver process started by this script.
cleanup() {
  if [[ -n "$DRIVER_PID" ]]; then
    kill "$DRIVER_PID" 2>/dev/null || true
    wait "$DRIVER_PID" 2>/dev/null || true
  fi
  if [[ -n "$DRIVER_LOG" && -f "$DRIVER_LOG" ]]; then
    rm -f "$DRIVER_LOG"
  fi
}

trap cleanup EXIT

# Validate all local inputs before starting a browser process.
if [[ ! "$DRIVER_PORT" =~ ^[0-9]+$ ]]; then
  fail "CHROMEDRIVER_PORT must be a number from 1 to 65535."
fi
DRIVER_PORT_NUMBER=$((10#$DRIVER_PORT))
if (( DRIVER_PORT_NUMBER < 1 || DRIVER_PORT_NUMBER > 65535 )); then
  fail "CHROMEDRIVER_PORT must be a number from 1 to 65535."
fi
DRIVER_URL="http://127.0.0.1:${DRIVER_PORT_NUMBER}"

if [[ "$TEST_TARGET" = /* || ! -f "$APP_DIR/$TEST_TARGET" ]]; then
  fail "Test target must be an existing path relative to cyber_bible_app: $TEST_TARGET"
fi
if ! command -v flutter >/dev/null 2>&1; then
  fail "Flutter was not found on PATH."
fi
if ! command -v curl >/dev/null 2>&1; then
  fail "curl is required to check the WebDriver server."
fi

CHROME_PATH="$(find_chrome_binary)"
CHROME_OUTPUT="$("$CHROME_PATH" --version 2>/dev/null)" ||
  fail "Could not read the Chrome version from: $CHROME_PATH"
CHROME_VERSION="$(version_from_output "$CHROME_OUTPUT")"
[[ -n "$CHROME_VERSION" ]] ||
  fail "Could not parse the Chrome version from: $CHROME_OUTPUT"

# Reuse a running server only when its browser version exactly matches Chrome.
DRIVER_VERSION="$(running_driver_version || true)"
if [[ -n "$DRIVER_VERSION" ]]; then
  if [[ "$DRIVER_VERSION" != "$CHROME_VERSION" ]]; then
    fail "Chrome is $CHROME_VERSION but the server on port $DRIVER_PORT_NUMBER is ChromeDriver $DRIVER_VERSION. Stop that server or use a matching pair."
  fi
else
  CHROMEDRIVER_PATH="$(find_chromedriver_binary)"
  [[ -n "$CHROMEDRIVER_PATH" ]] ||
    fail "ChromeDriver was not found. Follow docs/web-integration-testing.md to install a trusted version matching Chrome $CHROME_VERSION."

  DRIVER_OUTPUT="$("$CHROMEDRIVER_PATH" --version 2>/dev/null)" ||
    fail "Could not run ChromeDriver at: $CHROMEDRIVER_PATH"
  DRIVER_VERSION="$(version_from_output "$DRIVER_OUTPUT")"
  [[ -n "$DRIVER_VERSION" ]] ||
    fail "Could not parse the ChromeDriver version from: $DRIVER_OUTPUT"
  if [[ "$DRIVER_VERSION" != "$CHROME_VERSION" ]]; then
    fail "Chrome is $CHROME_VERSION but ChromeDriver is $DRIVER_VERSION. Install a matching, trusted pair as described in docs/web-integration-testing.md."
  fi

  # Avoid trying to replace an unrelated service that already owns this port.
  if command -v lsof >/dev/null 2>&1 &&
    lsof -nP -iTCP:"$DRIVER_PORT_NUMBER" -sTCP:LISTEN >/dev/null 2>&1; then
    fail "Port $DRIVER_PORT_NUMBER is occupied by a service that did not identify itself as ChromeDriver."
  fi

  DRIVER_LOG="$(mktemp "${TMPDIR:-/tmp}/cyber-bible-chromedriver.XXXXXX")"
  "$CHROMEDRIVER_PATH" \
    --port="$DRIVER_PORT_NUMBER" \
    --allowed-ips=127.0.0.1 \
    >"$DRIVER_LOG" 2>&1 &
  DRIVER_PID=$!

  # Wait briefly for the local server and fail with its logs if startup fails.
  for ((attempt = 0; attempt < 50; attempt++)); do
    DRIVER_VERSION="$(running_driver_version || true)"
    [[ -n "$DRIVER_VERSION" ]] && break
    if ! kill -0 "$DRIVER_PID" 2>/dev/null; then
      break
    fi
    sleep 0.2
  done
  if [[ "$DRIVER_VERSION" != "$CHROME_VERSION" ]]; then
    printf 'ChromeDriver did not become ready with the expected version.\n' >&2
    tail -n 30 "$DRIVER_LOG" >&2 || true
    exit 1
  fi
fi

printf 'Running %s with Chrome and ChromeDriver %s on port %s.\n' \
  "$TEST_TARGET" "$CHROME_VERSION" "$DRIVER_PORT_NUMBER"

cd "$APP_DIR"
flutter drive \
  --driver=test_driver/integration_test.dart \
  --target="$TEST_TARGET" \
  --driver-port="$DRIVER_PORT_NUMBER" \
  --browser-name=chrome \
  --chrome-binary="$CHROME_PATH" \
  -d web-server
