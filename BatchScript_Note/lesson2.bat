@echo off
:start

set /p MATH=输入你想要计算的表达式?

set /a RESULT=%MATH%
echo %RESULT%

if %RESULT%==99 start calc.exe

pause

goto start