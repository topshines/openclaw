@ECHO OFF
Title Copyrights reserved by topshines
setlocal EnableDelayedExpansion

@echo off
echo.
echo.
@echo 每周一、三、周五凌晨2点自动重启windows
echo.
echo.

schtasks /create /tn "Restart Windows" /tr "shutdown -r -f -t 0" /sc weekly /d mon,wed,fri /st 02:00:00 /ru System /rl highest /f

echo.
echo.
@echo 配置成功，窗口将自动关闭！
@ping -n 5 -w 1000 127.1>nul
exit