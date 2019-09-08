@echo off
echo 创建秘密并且验证
echo.
echo 你将选择以下连个的其中一个
echo -create
echo -check
echo.

:start
set /p PROGRAM= 请选择：
goto %PROGRAM%

:create
set /p PWD=请输入密码：
echo %PWD% > test.txt
pause
goto start

:check
set /p PWD_CHECK= 请确认密码：

for /f "Delims=" %%a in (test.txt) do (
set TEXT=%%a
)
if %PWD_CHECK%==%TEXT% goto correct
echo 密码错误！
goto start

:correct
echo 正确！
goto start

pause