@echo off
pushd "%~dp0"
cd ..
set dr=%CD%\
%dr%KMSELDI.exe /silent
popd
exit
