@echo off
pushd "%~dp0"
set name="WinDefend"
sc stop %name%
regedit /s EnableSmartScreen.reg
popd
exit
