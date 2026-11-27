# Running Web integration tests

Flutter unit and widget tests do not run the files in `integration_test/`.
Run Web integration tests separately from `cyber_bible_app/` with the local
runner:

```sh
bash tools/run_web_integration_test.sh
```

The default target is the IndexedDB migration regression test. To run another
Web integration test, pass its path relative to `cyber_bible_app/`:

```sh
bash tools/run_web_integration_test.sh integration_test/example_web_test.dart
```

## Chrome and ChromeDriver setup

The runner checks that ChromeDriver's full four-part version exactly matches
the Chrome binary used by the test. It reuses a matching ChromeDriver already
running on port `4444`, or starts the matching executable found on `PATH` and
stops only the server process it started. Set `CHROMEDRIVER_PORT` to use another
local port.

If Chrome or ChromeDriver is not found, or their versions differ:

1. Check the browser version with
   `"/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" --version`
   on macOS, or `google-chrome --version` on Linux.
2. Obtain Chrome and ChromeDriver for the **same version and operating-system
   architecture** from Google's [Chrome for Testing downloads page](https://googlechromelabs.github.io/chrome-for-testing/).
   The page publishes matched browser and driver builds. Avoid installing an
   older driver just because a package manager offers it.
3. Keep the downloaded files in a trusted local location. Do not disable
   Gatekeeper or remove macOS quarantine attributes to force an untrusted
   executable to run.
4. Point the runner at the selected pair:

   ```sh
   CHROME_BINARY="/path/to/chrome" \
   CHROMEDRIVER_BINARY="/path/to/chromedriver" \
   bash tools/run_web_integration_test.sh
   ```

On macOS, the Chrome executable inside the Chrome for Testing app bundle is
typically under `Google Chrome for Testing.app/Contents/MacOS/`. On Linux, use
the extracted `chrome` executable. The matching ChromeDriver is the
`chromedriver` executable from the same Chrome for Testing release.

The runner does not download binaries or weaken system security settings. If
macOS blocks a downloaded driver, use a browser/driver pair approved by the
developer's normal security process.
