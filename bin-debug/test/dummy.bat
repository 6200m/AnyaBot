:echo_off
@echo off
goto cleanup
:cleanup
del file.txt
goto variable
:variable
set file=file.txt
goto main
:main
(
    echo export const CHANNEL_NAME = '#yourChannelName';
    echo export const OAUTH_TOKEN = 'oauth:yourToken';
    echo export const BOT_USERNAME = 'yourChannelName';
    echo export const BLOCKED_WORDS = [
) >%file%
goto pause
:pause
pause
goto cls
:cls
cls
goto exit
:exit
exit



