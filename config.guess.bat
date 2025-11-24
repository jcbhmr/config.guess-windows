@echo off
rem Attempt to guess a canonical system name.
rem Copyright (C) 2025 Jacob Hummer
rem
rem This program is free software: you can redistribute it and/or modify
rem it under the terms of the GNU General Public License as published by
rem the Free Software Foundation, either version 3 of the License, or
rem (at your option) any later version.
rem
rem This program is distributed in the hope that it will be useful,
rem but WITHOUT ANY WARRANTY; without even the implied warranty of
rem MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
rem GNU General Public License for more details.
rem
rem You should have received a copy of the GNU General Public License
rem along with this program.  If not, see <https://www.gnu.org/licenses/>.

rem SPDX-License-Identifier: GPL-3.0-or-later
rem Please submit patches to <https://github.com/jcbhmr/config.guess-windows>

set "timestamp=2025-07-10"

if "%1"=="--time-stamp" goto :startTimeStamp
if "%1:~0,6%"=="--time" goto :startTimeStamp
if "%1"=="-t" goto :startTimeStamp
if "%1"=="--version" goto :startVersion
if "%1"=="-v" goto :startVersion
if "%1"=="--help" goto :startHelp
if "%1:~0,3%"=="--h" goto :startHelp
if "%1"=="-h" goto :startHelp
if "%1"=="--" goto :startMain
if "%1:~0,1%"=="-" goto :startMain
goto :startMain

:startTimeStamp
echo "%timestamp%"
exit /B 0

:startVersion
echo "Jacob Hummer config.guess.bat (%timestamp%)"
echo
echo "Copyright (C) 2025 Jacob Hummer"
echo
echo "This is free software; see the source for copying conditions.  There is NO"
echo "warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE."
exit /B 0

:startHelp
echo "Usage: %~n0 [OPTION]"
echo
echo "Output the configuration name of the system '%~n0' is run on."
echo
echo "Options:"
echo "  -h, --help         print this help, then exit"
echo "  -t, --time-stamp   print date of last modification, then exit"
echo "  -v, --version      print version number, then exit"
echo
echo
echo "Report bugs and patches to <https://github.com/jcbhmr/config.guess-windows>"
exit /B 0

:startMain
echo "x86_64-pc-windows-msvc"
exit /B "%ERRORLEVEL%"

:echoHelp
echo "Try '%~n0 --help' for more information."
exit /B 0
