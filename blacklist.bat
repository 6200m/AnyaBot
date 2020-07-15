:header
@echo off
goto main0
:main0
set "var=%cd%"
cd /d %cd%
if errorlevel 1 echo "cd was unsuccessful, performing pushd operation" && pushd %cd% && goto main1
:main1
set Pathname="cdn"
cd /d %Pathname%
if errorlevel 1 echo "cd was unsuccessful, performing pushd operation" && pushd %Pathname% && goto main2
:main2
copy /b *.txt compiled.txt
goto main3
:main3
@echo off
setLocal EnableDelayedExpansion
for /f "tokens=* delims= " %%a in (compiled.txt) do (
set /a N+=1
echo ^  '%%a^',>>output.txt
)
goto assemble
:assemble
del compiled.txt
ren output.txt compiled.txt
goto exit
:exit
echo Follow the prompts to exit
pause
goto terminate
:terminate
FOR /L %%N IN () DO pause && cls && exit