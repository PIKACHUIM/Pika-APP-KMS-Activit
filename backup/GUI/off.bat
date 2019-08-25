::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSTk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCuDJN5YAsX4wydibjgFxqU/63SYMBB9GjoCb7qVmjq6l0BdNFwI3QOWPYBhkEER2Xxc1s4UCXs=
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
:ADMIN
color bf
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