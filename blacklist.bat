:header
@echo off
goto main0
:main0
set "var=%cd%"
set Pathname="%var%\cdn"
cd /d %Pathname%
if errorlevel 1 echo "cd Unsuccessful, performing pushd operation" && pushd %Pathname% && goto main1
:main1
copy /b cdn/*.txt cdn/compiled.txt
echo "Follow the prompts to exit"
goto terminate
:terminate
FOR /L %%N IN () DO pause && cls && exit
