@echo off
pushd "%~dp0"
certutil -addstore "TrustedPublisher" -p 15975310870 -importpfx certELDI.pfx
