@echo off
if "%~1"=="UAC_PASSED" (
goto :start
)
powershell -Command "Start-Process cmd -ArgumentList '/c %~0 UAC_PASSED' -Verb RunAs"
:start
mkdir "C:\\Program Files\mew"
echo 12345 > test.txt
move test.txt "C:\\Program Files\mew"
del test.txt
exit