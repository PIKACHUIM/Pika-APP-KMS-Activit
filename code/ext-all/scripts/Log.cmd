@echo off
pushd "%~dp0"
cd ..
cd logs
type KMSELDI.log
pause
pause
type Autopico.log
pause
pause
type Service_KMS.log
pause
pause
popd
exit
