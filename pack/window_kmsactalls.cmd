@echo off
color 3f
title 皮卡丘Windows授权工具 - 服务
mode con lines=16 cols=60
echo.
echo.
echo.
echo             ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇
echo             ▇                                ▇
echo             ▇       ***正在申请权限***       ▇
echo             ▇                                ▇
echo             ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇
echo.
echo.
echo               ***如果提示授权，请点击【是】***         
setlocal EnableDelayedExpansion & cd /d "%~dp0"
%1 %2
ver|find "5.">nul&&goto :start
mshta vbscript:createobject("shell.application").shellexecute("%~s0","goto :start","","runas",1)(window.close)&goto :eof
:start
cls
echo.
echo.
echo.
echo             ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇
echo             ▇                                ▇
echo             ▇       ***正在激活系统***       ▇
echo             ▇                                ▇
echo             ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇
echo.
echo.
echo               ***如果提示授权，请点击【是】***     
wscript /nologo /B C:\WINDOWS\system32\slmgr.vbs /skms kms1.52pika.cf
wscript /nologo /B C:\WINDOWS\system32\slmgr.vbs /ato
wscript /nologo /B C:\WINDOWS\system32\slmgr.vbs /skms kms2.52pika.cf
wscript /nologo /B C:\WINDOWS\system32\slmgr.vbs /ato
wscript /nologo /B C:\WINDOWS\system32\slmgr.vbs /skms kms3.52pika.cf
wscript /nologo /B C:\WINDOWS\system32\slmgr.vbs /ato
start slmgr /dli
start slmgr /xpr