@echo off 
title AllProgramUpdater
echo AllProgramUpdater
echo Powered by Batch and Winget
echo ---------------------
echo 1: Update All Programs
echo 2: Exit
echo 3: Restart Program
set /p ans="Option: "

if %ans%==1 (
goto a
) 


if %ans%==2 (
goto b
)

if %ans%==3 (
goto c
)

:a
echo Are you sure you want to proceed with updating all programs? - Press any key to proceed
pause
cls
echo Accept any UAC prompts [User Account Control]
winget upgrade --all
pause

:b 
echo Exiting..
exit

:c
echo Restarting
cls
apu.bat