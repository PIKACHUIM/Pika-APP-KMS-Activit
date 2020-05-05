@echo off
color 3f
title 皮卡丘Offcie转换工具
mode con lines=20 cols=60
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
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
cd /d "%~dp0"
cls
for /f "tokens=6 delims=[]. " %%G in ('ver') do set win=%%G
cd /D "%SystemRoot%\System32"
if %win% GEQ 9200 (
cscript slmgr.vbs /ilc "%ProgramFiles(x86)%\Microsoft Office\root\Licenses16\ProPlusVL_KMS_Client-ppd.xrm-ms"
cscript slmgr.vbs /ilc "%ProgramFiles(x86)%\Microsoft Office\root\Licenses16\ProPlusVL_KMS_Client-ul.xrm-ms"
cscript slmgr.vbs /ilc "%ProgramFiles(x86)%\Microsoft Office\root\Licenses16\ProPlusVL_KMS_Client-ul-oob.xrm-ms"
cscript slmgr.vbs /ilc "%ProgramFiles(x86)%\Microsoft Office\root\Licenses16\ProjectProVL_KMS_Client-ppd.xrm-ms"
cscript slmgr.vbs /ilc "%ProgramFiles(x86)%\Microsoft Office\root\Licenses16\ProjectProVL_KMS_Client-ul-oob.xrm-ms"
cscript slmgr.vbs /ilc "%ProgramFiles(x86)%\Microsoft Office\root\Licenses16\ProjectProVL_KMS_Client-ul.xrm-ms"
cscript slmgr.vbs /ilc "%ProgramFiles(x86)%\Microsoft Office\root\Licenses16\VisioProVL_KMS_Client-ppd.xrm-ms"
cscript slmgr.vbs /ilc "%ProgramFiles(x86)%\Microsoft Office\root\Licenses16\VisioProVL_KMS_Client-ul-oob.xrm-ms"
cscript slmgr.vbs /ilc "%ProgramFiles(x86)%\Microsoft Office\root\Licenses16\VisioProVL_KMS_Client-ul.xrm-ms"
cscript slmgr.vbs /ilc "%ProgramFiles(x86)%\Microsoft Office\root\Licenses16\client-issuance-bridge-office.xrm-ms
cscript slmgr.vbs /ilc "%ProgramFiles(x86)%\Microsoft Office\root\Licenses16\client-issuance-root.xrm-ms
cscript slmgr.vbs /ilc "%ProgramFiles(x86)%\Microsoft Office\root\Licenses16\client-issuance-root-bridge-test.xrm-ms
cscript slmgr.vbs /ilc "%ProgramFiles(x86)%\Microsoft Office\root\Licenses16\client-issuance-stil.xrm-ms
cscript slmgr.vbs /ilc "%ProgramFiles(x86)%\Microsoft Office\root\Licenses16\client-issuance-ul.xrm-ms
cscript slmgr.vbs /ilc "%ProgramFiles(x86)%\Microsoft Office\root\Licenses16\client-issuance-ul-oob.xrm-ms
cscript slmgr.vbs /ilc "%ProgramFiles(x86)%\Microsoft Office\root\Licenses16\pkeyconfig-office.xrm-ms
)
if %win% LSS 9200 (
cscript "%ProgramFiles(x86)%\Microsoft Office\Office16\ospp.vbs" /inslic:"%ProgramFiles(x86)%\Microsoft Office\root\Licenses16\ProPlusVL_KMS_Client-ppd.xrm-ms"
cscript "%ProgramFiles(x86)%\Microsoft Office\Office16\ospp.vbs" /inslic:"%ProgramFiles(x86)%\Microsoft Office\root\Licenses16\ProPlusVL_KMS_Client-ul.xrm-ms"
cscript "%ProgramFiles(x86)%\Microsoft Office\Office16\ospp.vbs" /inslic:"%ProgramFiles(x86)%\Microsoft Office\root\Licenses16\ProPlusVL_KMS_Client-ul-oob.xrm-ms"
cscript "%ProgramFiles(x86)%\Microsoft Office\Office16\ospp.vbs" /inslic:"%ProgramFiles(x86)%\Microsoft Office\root\Licenses16\ProjectProVL_KMS_Client-ppd.xrm-ms"
cscript "%ProgramFiles(x86)%\Microsoft Office\Office16\ospp.vbs" /inslic:"%ProgramFiles(x86)%\Microsoft Office\root\Licenses16\ProjectProVL_KMS_Client-ul-oob.xrm-ms"
cscript "%ProgramFiles(x86)%\Microsoft Office\Office16\ospp.vbs" /inslic:"%ProgramFiles(x86)%\Microsoft Office\root\Licenses16\ProjectProVL_KMS_Client-ul.xrm-ms"
cscript "%ProgramFiles(x86)%\Microsoft Office\Office16\ospp.vbs" /inslic:"%ProgramFiles(x86)%\Microsoft Office\root\Licenses16\VisioProVL_KMS_Client-ppd.xrm-ms"
cscript "%ProgramFiles(x86)%\Microsoft Office\Office16\ospp.vbs" /inslic:"%ProgramFiles(x86)%\Microsoft Office\root\Licenses16\VisioProVL_KMS_Client-ul-oob.xrm-ms"
cscript "%ProgramFiles(x86)%\Microsoft Office\Office16\ospp.vbs" /inslic:"%ProgramFiles(x86)%\Microsoft Office\root\Licenses16\VisioProVL_KMS_Client-ul.xrm-ms"
cscript "%ProgramFiles(x86)%\Microsoft Office\Office16\ospp.vbs" /inslic:"%ProgramFiles(x86)%\Microsoft Office\root\Licenses16\client-issuance-bridge-office.xrm-ms
cscript "%ProgramFiles(x86)%\Microsoft Office\Office16\ospp.vbs" /inslic:"%ProgramFiles(x86)%\Microsoft Office\root\Licenses16\client-issuance-root.xrm-ms
cscript "%ProgramFiles(x86)%\Microsoft Office\Office16\ospp.vbs" /inslic:"%ProgramFiles(x86)%\Microsoft Office\root\Licenses16\client-issuance-root-bridge-test.xrm-ms
cscript "%ProgramFiles(x86)%\Microsoft Office\Office16\ospp.vbs" /inslic:"%ProgramFiles(x86)%\Microsoft Office\root\Licenses16\client-issuance-stil.xrm-ms
cscript "%ProgramFiles(x86)%\Microsoft Office\Office16\ospp.vbs" /inslic:"%ProgramFiles(x86)%\Microsoft Office\root\Licenses16\client-issuance-ul.xrm-ms
cscript "%ProgramFiles(x86)%\Microsoft Office\Office16\ospp.vbs" /inslic:"%ProgramFiles(x86)%\Microsoft Office\root\Licenses16\client-issuance-ul-oob.xrm-ms
cscript "%ProgramFiles(x86)%\Microsoft Office\Office16\ospp.vbs" /inslic:"%ProgramFiles(x86)%\Microsoft Office\root\Licenses16\pkeyconfig-office.xrm-ms
)
@echo off
:ADMIN
for /f "tokens=6 delims=[]. " %%G in ('ver') do set win=%%G
cd /D "%SystemRoot%\System32"
if %win% GEQ 9200 (
cscript slmgr.vbs /ilc "%ProgramFiles%\Microsoft Office\root\Licenses16\ProPlusVL_KMS_Client-ppd.xrm-ms"
cscript slmgr.vbs /ilc "%ProgramFiles%\Microsoft Office\root\Licenses16\ProPlusVL_KMS_Client-ul.xrm-ms"
cscript slmgr.vbs /ilc "%ProgramFiles%\Microsoft Office\root\Licenses16\ProPlusVL_KMS_Client-ul-oob.xrm-ms"
cscript slmgr.vbs /ilc "%ProgramFiles%\Microsoft Office\root\Licenses16\ProjectProVL_KMS_Client-ppd.xrm-ms"
cscript slmgr.vbs /ilc "%ProgramFiles%\Microsoft Office\root\Licenses16\ProjectProVL_KMS_Client-ul-oob.xrm-ms"
cscript slmgr.vbs /ilc "%ProgramFiles%\Microsoft Office\root\Licenses16\ProjectProVL_KMS_Client-ul.xrm-ms"
cscript slmgr.vbs /ilc "%ProgramFiles%\Microsoft Office\root\Licenses16\VisioProVL_KMS_Client-ppd.xrm-ms"
cscript slmgr.vbs /ilc "%ProgramFiles%\Microsoft Office\root\Licenses16\VisioProVL_KMS_Client-ul-oob.xrm-ms"
cscript slmgr.vbs /ilc "%ProgramFiles%\Microsoft Office\root\Licenses16\VisioProVL_KMS_Client-ul.xrm-ms"
cscript slmgr.vbs /ilc "%ProgramFiles%\Microsoft Office\root\Licenses16\client-issuance-bridge-office.xrm-ms
cscript slmgr.vbs /ilc "%ProgramFiles%\Microsoft Office\root\Licenses16\client-issuance-root.xrm-ms
cscript slmgr.vbs /ilc "%ProgramFiles%\Microsoft Office\root\Licenses16\client-issuance-root-bridge-test.xrm-ms
cscript slmgr.vbs /ilc "%ProgramFiles%\Microsoft Office\root\Licenses16\client-issuance-stil.xrm-ms
cscript slmgr.vbs /ilc "%ProgramFiles%\Microsoft Office\root\Licenses16\client-issuance-ul.xrm-ms
cscript slmgr.vbs /ilc "%ProgramFiles%\Microsoft Office\root\Licenses16\client-issuance-ul-oob.xrm-ms
cscript slmgr.vbs /ilc "%ProgramFiles%\Microsoft Office\root\Licenses16\pkeyconfig-office.xrm-ms
)
if %win% LSS 9200 (
cscript "%ProgramFiles%\Microsoft Office\Office16\ospp.vbs" /inslic:"%ProgramFiles%\Microsoft Office\root\Licenses16\ProPlusVL_KMS_Client-ppd.xrm-ms"
cscript "%ProgramFiles%\Microsoft Office\Office16\ospp.vbs" /inslic:"%ProgramFiles%\Microsoft Office\root\Licenses16\ProPlusVL_KMS_Client-ul.xrm-ms"
cscript "%ProgramFiles%\Microsoft Office\Office16\ospp.vbs" /inslic:"%ProgramFiles%\Microsoft Office\root\Licenses16\ProPlusVL_KMS_Client-ul-oob.xrm-ms"
cscript "%ProgramFiles%\Microsoft Office\Office16\ospp.vbs" /inslic:"%ProgramFiles%\Microsoft Office\root\Licenses16\ProjectProVL_KMS_Client-ppd.xrm-ms"
cscript "%ProgramFiles%\Microsoft Office\Office16\ospp.vbs" /inslic:"%ProgramFiles%\Microsoft Office\root\Licenses16\ProjectProVL_KMS_Client-ul-oob.xrm-ms"
cscript "%ProgramFiles%\Microsoft Office\Office16\ospp.vbs" /inslic:"%ProgramFiles%\Microsoft Office\root\Licenses16\ProjectProVL_KMS_Client-ul.xrm-ms"
cscript "%ProgramFiles%\Microsoft Office\Office16\ospp.vbs" /inslic:"%ProgramFiles%\Microsoft Office\root\Licenses16\VisioProVL_KMS_Client-ppd.xrm-ms"
cscript "%ProgramFiles%\Microsoft Office\Office16\ospp.vbs" /inslic:"%ProgramFiles%\Microsoft Office\root\Licenses16\VisioProVL_KMS_Client-ul-oob.xrm-ms"
cscript "%ProgramFiles%\Microsoft Office\Office16\ospp.vbs" /inslic:"%ProgramFiles%\Microsoft Office\root\Licenses16\VisioProVL_KMS_Client-ul.xrm-ms"
cscript "%ProgramFiles%\Microsoft Office\Office16\ospp.vbs" /inslic:"%ProgramFiles%\Microsoft Office\root\Licenses16\client-issuance-bridge-office.xrm-ms
cscript "%ProgramFiles%\Microsoft Office\Office16\ospp.vbs" /inslic:"%ProgramFiles%\Microsoft Office\root\Licenses16\client-issuance-root.xrm-ms
cscript "%ProgramFiles%\Microsoft Office\Office16\ospp.vbs" /inslic:"%ProgramFiles%\Microsoft Office\root\Licenses16\client-issuance-root-bridge-test.xrm-ms
cscript "%ProgramFiles%\Microsoft Office\Office16\ospp.vbs" /inslic:"%ProgramFiles%\Microsoft Office\root\Licenses16\client-issuance-stil.xrm-ms
cscript "%ProgramFiles%\Microsoft Office\Office16\ospp.vbs" /inslic:"%ProgramFiles%\Microsoft Office\root\Licenses16\client-issuance-ul.xrm-ms
cscript "%ProgramFiles%\Microsoft Office\Office16\ospp.vbs" /inslic:"%ProgramFiles%\Microsoft Office\root\Licenses16\client-issuance-ul-oob.xrm-ms
cscript "%ProgramFiles%\Microsoft Office\Office16\ospp.vbs" /inslic:"%ProgramFiles%\Microsoft Office\root\Licenses16\pkeyconfig-office.xrm-ms
)