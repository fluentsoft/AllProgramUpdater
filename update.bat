cls
@echo off

title AllProgramUpdater Update

cd %USERPROFILE%/Documents
mkdir update
cd %USERPROFILE%/Documents/update

powershell -command "Invoke-WebRequest https://raw.githubusercontent.com/Yellowwizz/AllProgramUpdater/Main/AllProgramUpdater.EXE -Outfile AllProgramUpdater.exe"


echo The file is located in Documents in the folder "update"
echo Do you want to keep the file? (1 for Yes and 2 for No)
set /p ans="Option: "

if %ans%==1 (
goto a
) 


if %ans%==2 (
goto b
)

:a 
echo Moving File to Documents
cd %USERPROFILE%
move "%USERPROFILE%\Documents\update\AllProgramUpdater.exe" "%USERPROFILE%\Documents\"
explorer %USERPROFILE%\Documents\
cd %USERPROFILE%/Documents
timeout 5
rmdir update
echo The File is in Documents.
exit

:b
cd %UserProfile%/Documents 
cd update
timeout 20
del AllProgramUpdater.exe
cd %USERPROFILE%/Documents
rmdir update
pause