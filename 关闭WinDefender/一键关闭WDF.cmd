@echo off
color 3f
title 皮卡丘Windows Defender关闭工具
mode con lines=35 cols=58
echo.
echo.
echo.
echo            ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇
echo            ▇                                ▇
echo            ▇       ***正在申请权限***       ▇
echo            ▇                                ▇
echo            ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇
echo.
echo.
echo              ***如果提示授权，请点击【是】***       
setlocal EnableDelayedExpansion & cd /d "%~dp0"
%1 %2
ver|find "5.">nul&&goto :start
mshta vbscript:createobject("shell.application").shellexecute("%~s0","goto :start1","","runas",1)(window.close)&goto :eof
:start1
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /d 1 /t REG_DWORD /f
mshta vbscript:msgbox("成功关闭Windows Defender，请先重启电脑",64,"系统提示")(window.close)