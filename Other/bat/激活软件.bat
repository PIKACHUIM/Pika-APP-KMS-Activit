@echo off
color 1f
cd "%ProgramFiles(x86)%\Microsoft Office\Office16"
cd "%ProgramFiles%\Microsoft Office\Office16"
echo ******************正在激活Office******************
echo 设置激活服务器..................................
cscript "%ProgramFiles(x86)%\Microsoft Office\Office16\ospp.vbs" /sethst:vcn1.99pika.com
echo 应用激活序列号..................................
cscript "%ProgramFiles(x86)%\Microsoft Office\Office16\ospp.vbs" /act
echo 正在激活本系统..................................
cscript "%ProgramFiles(x86)%\Microsoft Office\Office16\ospp.vbs" /dstatus
pause
echo ******************激活完成Office******************
pause