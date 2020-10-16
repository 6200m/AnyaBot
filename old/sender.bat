@echo off
goto main
:main
xcopy constants-twitch.js src\
goto pause
:pause
pause
goto cls
:cls
cls
goto exit
:exit
exit
