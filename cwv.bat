@echo off
title Checking Windows Version
for /f "tokens=4-5 delims=. " %%i in ('ver') do set VERSION=%%i.%%j
if "%version%" == "5.0" start error.exe
if "%version%" == "5.1" start error.exe
if "%version%" == "5.2" start error.exe
if "%version%" == "6.0" start error.exe
if "%version%" == "6.1" start error.exe
if "%version%" == "6.2" start error.exe
if "%version%" == "6.3" start error.exe
if "%version%" == "10.0" apu.bat
pause
