@echo off
:: How to Copy,Move and Rename files + More

copy C:\Users\leslie\Desktop\特殊人员.txt D:\Batch_Script

move C:\Users\leslie\Desktop\照片任务.txt D:\Batch_Script

:: 把文件复制到桌面，适应不同的 Windows 电脑
xcopy /y %CD%\lesson4.bat c:\Users\%USERNAME%\Desktop
:: start 和 call 都可以打开这个文件，或者开始可执行程序
start %CD%\test.txt
call %CD%\test.txt
rename %CD%\1.txt 2.txt 
del %CD%\delete.txt

pause 