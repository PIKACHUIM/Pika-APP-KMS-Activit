@echo off
pushd "%~dp0"
Set uninstaller="%programfiles%\TAP-Windows\Uninstall.exe"
%uninstaller% /S
Set uninstaller="%programfiles%\KMS-Windows\Uninstall.exe"
%uninstaller% /S
popd
exit