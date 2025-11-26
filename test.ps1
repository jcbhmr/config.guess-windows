#!/usr/bin/env pwsh
$ErrorActionPreference = "Stop"

if (-not $IsWindows) {
    Write-Error "this script only works on Windows systems"
    exit 1
}

$architecture = [string][System.Runtime.InteropServices.RuntimeInformation]::OSArchitecture
switch ($architecture) {
    "X64"   { $expected = "x86_64-pc-windows-msvc" }
    "Arm64" { $expected = "arm64-pc-windows-msvc" }
    default {
        Write-Error "unsupported architecture: $architecture"
        exit 1
    }
}

# Correct way to invoke executable relative to script directory
$scriptDir = Split-Path -Parent $PSCommandPath
$actual = & (Join-Path $scriptDir "config.guess.bat")

if ($actual -ne $expected) {
    Write-Error "expected $expected, got $actual"
    exit 1
}

Write-Host "got expected $expected"
