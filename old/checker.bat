:base_header
@echo off
set file=constants-twitch.js.new
goto header
:header
@echo off
echo Operation begun.
goto main0
:main0
set "var=%cd%"
cd /d %cd%
if errorlevel 1 echo "cd was unsuccessful, performing pushd operation" && pushd %cd% && goto main1
:main1
set Pathname="bin-debug"
cd /d %Pathname%
if errorlevel 1 echo "cd was unsuccessful, performing pushd operation" && pushd %Pathname% && goto main2
:main2
start cmd.exe sanity.bat
goto pause
:pause
pause
goto cls
:cls
goto exit
:exit
exit
