#!/usr/bin/env pwsh
$ErrorActionPreference = "Stop"

if (-not $IsWindows) {
  Write-Host "This script only works on Windows systems"
  Exit 1
}

$architecture = [System.Runtime.InteropServices.RuntimeInformation]::OSArchitecture
$expected = ""
if ($architecture -eq "X64") {
  $expected = "x86_64-pc-windows-msvc"
}
if ($architecture -eq "ARM64") {
  $expected = "arm64-pc-windows-msvc"
}
$actual = ./config.guess.bat

if ($actual -ne $expected) {
  Write-Host "expected $expected, got $actual"
  Exit 1
}

Write-Host "got expected $expected"
