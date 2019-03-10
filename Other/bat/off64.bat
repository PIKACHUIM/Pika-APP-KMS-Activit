@echo off
:ADMIN
openfiles >nul 2>nul ||(
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
"%temp%\getadmin.vbs" >nul 2>&1
goto:eof
)
del /f /q "%temp%\getadmin.vbs" >nul 2>nul
for /f "tokens=6 delims=[]. " %%G in ('ver') do set win=%%G
pushd "%~dp0"
Title Office 2016 Retail to Volume License Converter
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