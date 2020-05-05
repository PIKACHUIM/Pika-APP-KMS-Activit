@echo off
pushd "%~dp0"
cd ..
set dr=%CD%\
set name="Service KMSELDI"
sc create %name% binPath= "%dr%Service_KMS.exe" type= own error= normal start= auto DisplayName= %name%
rem sc start %name%
popd
exit
