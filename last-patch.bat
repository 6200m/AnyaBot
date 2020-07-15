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
xcopy constants.twitch.js bin-debug\
goto main2
:main2
set Pathname="bin-debug"
cd /d %Pathname%
if errorlevel 1 echo "cd was unsuccessful, performing pushd operation" && pushd %Pathname% && goto main3
:main3
ren constants-twitch.js constants-twitch.js.new
xcopy constants-twitch.js.new + end.txt constants-twitch.js
del constants-twitch.js.new
goto pause
:pause
pause
goto cls
:cls
cls
goto exit
:exit
exit