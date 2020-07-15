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
set Pathname="src"
cd /d %Pathname%
if errorlevel 1 echo "cd was unsuccessful, performing pushd operation" && pushd %Pathname% && goto main2
:main2
(
    echo export const CHANNEL_NAME = '#yourChannelName';
    echo export const OAUTH_TOKEN = 'oauth:yourToken';
    echo export const BOT_USERNAME = 'yourChannelName';
    echo export const BLOCKED_WORDS = [
) >%file%
goto main3
:main3
type constants-twitch.js >>constants-twitch.js.new
move /y constants-twitch.js.new constants-twitch.js
goto pause
:pause
pause
goto cls
:cls
goto exit
:exit
exit