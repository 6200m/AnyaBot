:header
@echo off
goto main0
:main0
set "var=%cd%"
set Pathname="%var%\cdn"
cd /d %Pathname%
if errorlevel 1 echo "cd was unsuccessful, performing pushd operation" && pushd %Pathname% && goto main1
:main1
set "var=%cd%"
set Pathname="%var%\cdn"
copy /b %var%\*.txt %var%\compiled.txt
echo "Follow the prompts to exit"
goto terminate
:terminate
FOR /L %%N IN () DO pause && cls && exit
