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

$actual = "hello world"

if ($actual -ne $expected) {
    Write-Error "expected $expected, got $actual"
    exit 1
}

Write-Host "got expected $expected"
