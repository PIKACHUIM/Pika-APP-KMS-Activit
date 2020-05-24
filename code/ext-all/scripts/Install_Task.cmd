@echo off
pushd "%~dp0"
cd ..
set dr=%CD%\
set name="AutoPico Daily Restart"
SCHTASKS /Create /TN %name% /TR "'%dr%AutoPico.exe' /silent" /SC DAILY /ST 23:59:59 /RU "NT AUTHORITY\SYSTEM" /RL Highest /F
popd
exit
