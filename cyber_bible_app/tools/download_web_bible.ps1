#!/usr/bin/env pwsh
<#
.SYNOPSIS
    Downloads the World English Bible (WEB) USFX XML data from eBible.org.

.DESCRIPTION
    This script downloads the WEB Classic edition (includes Deuterocanon/Apocrypha)
    in USFX format from eBible.org. The downloaded files are placed in tools/data/
    and are used by later build steps to generate the SQLite Bible database.

    The WEB is Public Domain. See https://ebible.org/find/details.php?id=eng-web

.NOTES
    Source: eBible.org
    Translation ID: eng-web (ENGWEB)
    Edition: World English Bible Classic (American English, includes Deuterocanon)
    License: Public Domain
#>

$ErrorActionPreference = "Stop"

# Paths
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$DataDir = Join-Path $ScriptDir "data"
$ZipFile = Join-Path $DataDir "eng-web_usfx.zip"
$ExtractDir = Join-Path $DataDir "eng-web_usfx"

# Download URL
$UsfxUrl = "https://ebible.org/Scriptures/eng-web_usfx.zip"

# Create data directory
if (-not (Test-Path $DataDir)) {
    New-Item -ItemType Directory -Path $DataDir -Force | Out-Null
    Write-Host "Created directory: $DataDir"
}

# Download USFX zip
if (-not (Test-Path $ZipFile)) {
    Write-Host "Downloading WEB USFX from eBible.org..."
    Write-Host "  URL: $UsfxUrl"
    Invoke-WebRequest -Uri $UsfxUrl -OutFile $ZipFile
    Write-Host "  Downloaded: $ZipFile"
} else {
    Write-Host "USFX zip already exists: $ZipFile (skipping download)"
}

# Extract (verify USFX XML exists, re-extract if missing/corrupt)
$UsfxXml = $null
if (Test-Path $ExtractDir) {
    $UsfxXml = Get-ChildItem -Path $ExtractDir -Filter "*usfx.xml" -Recurse -File | Select-Object -First 1
}

if ((-not (Test-Path $ExtractDir)) -or (-not $UsfxXml)) {
    if (Test-Path $ExtractDir) {
        Write-Host "Existing extraction is missing expected USFX XML; re-extracting..."
        Remove-Item -Path $ExtractDir -Recurse -Force
    } else {
        Write-Host "Extracting USFX zip..."
    }

    Expand-Archive -Path $ZipFile -DestinationPath $ExtractDir -Force
    Write-Host "  Extracted to: $ExtractDir"
    $UsfxXml = Get-ChildItem -Path $ExtractDir -Filter "*usfx.xml" -Recurse -File | Select-Object -First 1
} else {
    Write-Host "USFX already extracted and verified: $ExtractDir (skipping extraction)"
}

# Verify key files exist
if ($UsfxXml) {
    Write-Host ""
    Write-Host "SUCCESS: USFX XML found at: $($UsfxXml.FullName)"
    Write-Host "  File size: $([math]::Round($UsfxXml.Length / 1MB, 2)) MB"
} else {
    Write-Host ""
    Write-Host "ERROR: No usfx.xml file found in extracted archive."
    Write-Host "  Contents of $ExtractDir :"
    Get-ChildItem -Path $ExtractDir -Recurse | ForEach-Object { Write-Host "    $($_.FullName)" }
    throw "No usfx.xml file found in extracted archive: $ExtractDir"
}

# List all extracted files summary
$AllFiles = Get-ChildItem -Path $ExtractDir -Recurse -File
Write-Host ""
Write-Host "Extracted $($AllFiles.Count) file(s):"
$AllFiles | ForEach-Object {
    Write-Host "  $($_.Name) ($([math]::Round($_.Length / 1KB, 1)) KB)"
}

Write-Host ""
Write-Host "Done. Next step: Parse the USFX XML (Step 1.4)"
