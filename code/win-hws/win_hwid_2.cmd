@echo off
color 3f
title 皮卡丘数字权利激活工具
mode con lines=35 cols=58
echo.
echo.
echo.
echo            ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇
echo            ▇                                ▇
echo            ▇       ***正在申请权限***       ▇
echo            ▇                                ▇
echo            ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇
echo.
echo.
echo              ***如果提示授权，请点击【是】***                

%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
cd /d "%~dp0"
setlocal EnableDelayedExpansion & cd /d "%~dp0"
    if /i "%PROCESSOR_IDENTIFIER:~0,3%"=="x86" (
    set "bit=x86"
    set "digit=System32\spp\tokens\skus") else (
    set "bit=x64"
    set "digit=SysNative\spp\tokens\skus")
	cls
	echo.
	echo.
	echo      ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇
	echo      ▇                                            ▇
	echo      ▇          Windows10数字权利激活脚本         ▇
	echo      ▇                                            ▇
	echo      ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇
    echo ----------------------------------------------------------
    echo        脚本支持激活以下版本 Windows 10获取数字权利
    echo ----------------------------------------------------------
    echo                 Windows 10 精简-S(N)
    echo                 Windows 10 家庭版(N)
    echo                 Windows 10 专业版(N)
    echo                 Windows 10 企业版(N)
    echo                 Windows 10 教育版(N)
	echo                 Windows 10 专业教育版(N)
	echo                 Windows 10 专业工作站(N)
    echo                 Windows 10 家庭单语言(N)
	echo                 Windows 10 家庭国家版(N)
    echo                 Windows 10 LTSB 2016 (N)
    echo ----------------------------------------------------------
    echo   激活时请保持电脑连网状态，断网情况下无法使用此方法激活
    echo   激活可能运行一次无法成功，遇无法成功的可以重新运行尝试
    echo   精简版系统也可能无法激活，切换版本后的版本显示会有延时
    echo ----------------------------------------------------------
	echo.
    echo            按任意键开始，或按 Ctrl+C 退出脚本！
goto start
    pause >nul
:menu
    title Windows 10 数字权利激活脚本－选择功能
    cls
    echo ----------------------------------------------------------
    echo     请选择任务。
    echo ----------------------------------------------------------
    echo     [1]一键激活系统
    echo     [2]手动选择激活
    echo     [3]查看当前信息
    echo     [4]安装产品密钥
    echo     [5]卸载默认密钥
    echo     [6]生成静默脚本
    echo     [7]退出
    echo ----------------------------------------------------------
    choice /n /c 1234567 /m "请输入数字选择:"
    cls
    if errorlevel 7 exit
    if errorlevel 6 goto generate
    if errorlevel 5 goto uninstall
    if errorlevel 4 goto install
    if errorlevel 3 goto information
    if errorlevel 2 goto Choice
    if errorlevel 1 goto start
:Choice
    title Windows 10 数字权利激活脚本－选择版本
    cls
    echo ----------------------------------------------------------
    echo     请选择需要激活的版本
    echo ----------------------------------------------------------
    echo A= Windows 10 S （安装证书仅限 16299）
    echo B= Windows 10 S N （安装证书仅限 16299）
    echo ----------------------------------------------------------
    echo 以下版本支持安装 16299  17134  17763  18362 的证书。
    echo C= Windows 10 家庭版
    echo D= Windows 10 家庭 N
    echo E= Windows 10 家庭国家版
    echo F= Windows 10 家庭单语言版
    echo ----------------------------------------------------------
    echo G= Windows 10 专业版
    echo H= Windows 10 专业 N
    echo I= Windows 10 专业教育版
    echo J= Windows 10 专业教育 N
    echo K= Windows 10 专业工作站版
    echo L= Windows 10 专业工作站 N
    echo ----------------------------------------------------------
    echo M= Windows 10 教育版
    echo N= Windows 10 教育 N
    echo ----------------------------------------------------------
    echo O= Windows 10 企业版
    echo P= Windows 10 企业 N
    echo Q= Windows 10 企业 LTSB
    echo R= Windows 10 企业 LTSB N
    echo ----------------------------------------------------------
    echo.
    set /p "pid=请输入对应版本的字母，按 Enter 开始:"
    cls
    if /i "%pid%"=="a" goto Cloud
    if /i "%pid%"=="b" goto CloudN
    if /i "%pid%"=="c" goto Core
    if /i "%pid%"=="d" goto CoreN
    if /i "%pid%"=="e" goto CoreCountrySpecific
    if /i "%pid%"=="f" goto CoreSingleLanguage
    if /i "%pid%"=="g" goto Professional
    if /i "%pid%"=="h" goto ProfessionalN
    if /i "%pid%"=="i" goto ProfessionalEducation
    if /i "%pid%"=="j" goto ProfessionalEducationN
    if /i "%pid%"=="k" goto ProfessionalWorkstation
    if /i "%pid%"=="l" goto ProfessionalWorkstationN
    if /i "%pid%"=="m" goto Education
    if /i "%pid%"=="n" goto EducationN
    if /i "%pid%"=="o" goto Enterprise
    if /i "%pid%"=="p" goto EnterpriseN
    if /i "%pid%"=="q" goto EnterpriseS
    if /i "%pid%"=="r" goto EnterpriseSN
    echo. & echo 输入错误，按任意键重新输入！
    pause >nul && cls && goto Choice
:start
    cls
	echo.
	echo.
	echo      ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇
	echo      ▇                                            ▇
	echo      ▇          Windows10数字权利激活脚本         ▇
	echo      ▇                                            ▇
	echo      ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇
    echo ----------------------------------------------------------
    echo        脚本支持激活以下版本 Windows 10获取数字权利
    echo ----------------------------------------------------------
    echo                 Windows 10 精简-S(N)
    echo                 Windows 10 家庭版(N)
    echo                 Windows 10 专业版(N)
    echo                 Windows 10 企业版(N)
    echo                 Windows 10 教育版(N)
	echo                 Windows 10 专业教育版(N)
	echo                 Windows 10 专业工作站(N)
    echo                 Windows 10 家庭单语言(N)
	echo                 Windows 10 家庭国家版(N)
    echo                 Windows 10 LTSB 2016 (N)
    echo ----------------------------------------------------------
    wmic path SoftwareLicensingProduct where (LicenseStatus='1' and GracePeriodRemaining='0') get Name 2>nul | findstr /i "Windows" >nul 2>&1 &&(
	echo. 
	color 2f
    echo ----------------------------------------------------------
    echo 【ERRO】%date%%time% 此计算机已永久激活！
    echo 【ERRO】%date%%time% 请在未激活时运行此脚本
    echo ----------------------------------------------------------
	echo ***********************按任意键退出***********************
	pause >nul
	exit	
	)
    for /f "tokens=3 delims= " %%i in ('cscript /nologo %SystemRoot%\System32\slmgr.vbs /dli ^| findstr /i "edition"') do (set edition=%%i)
	echo 【INFO】%date%%time% 系统版本:%edition%
    goto %edition%

:Cloud
    set "sku=178"
    set "pidkey=V3WVW-N2PV2-CGWC3-34QGF-VMJ2C"
    set "skus=Cloud"
    goto activation

CloudN
    s:et "sku=179"
    set "pidkey=NH9J3-68WK7-6FB93-4K3DF-DJ4F6"
    set "skus=CloudN"
    goto activation

:Core
    set "sku=101"
    set "pidkey=YTMG3-N6DKC-DKB77-7M9GH-8HVX7"
    set "skus=Core"
    goto activation

:CoreN
    set "sku=98"
    set "pidkey=4CPRK-NM3K3-X6XXQ-RXX86-WXCHW"
    set "skus=CoreN"
    goto activation

:CoreCountrySpecific
    set "sku=99"
    set "pidkey=N2434-X9D7W-8PF6X-8DV9T-8TYMD"
    set "skus=CoreCountrySpecific"
    goto activation

:CoreSingleLanguage
    set "sku=100"
    set "pidkey=BT79Q-G7N6G-PGBYW-4YWX6-6F4BT"
    set "skus=CoreSingleLanguage"
    goto activation

:Professional
    set "sku=48"
    set "pidkey=VK7JG-NPHTM-C97JM-9MPGT-3V66T"
    set "skus=Professional"
    goto activation

:ProfessionalN
    set "sku=49"
    set "pidkey=2B87N-8KFHP-DKV6R-Y2C8J-PKCKT"
    set "skus=ProfessionalN"
    goto activation

:ProfessionalEducation
    set "sku=164"
    set "pidkey=8PTT6-RNW4C-6V7J2-C2D3X-MHBPB"
    set "skus=ProfessionalEducation"
    goto activation

:ProfessionalEducationN
    set "sku=165"
    set "pidkey=GJTYN-HDMQY-FRR76-HVGC7-QPF8P"
    set "skus=ProfessionalEducationN"
    goto activation

:ProfessionalWorkstation
    set "sku=161"
    set "pidkey=DXG7C-N36C4-C4HTG-X4T3X-2YV77"
    set "skus=ProfessionalWorkstation"
    goto activation

:ProfessionalWorkstationN
    set "sku=162"
    set "pidkey=WYPNQ-8C467-V2W6J-TX4WX-WT2RQ"
    set "skus=ProfessionalWorkstationN"
    goto activation

:Education
    set "sku=121"
    set "pidkey=YNMGQ-8RYV3-4PGQ3-C8XTP-7CFBY"
    set "skus=Education"
    goto activation
:EducationN
    set "sku=122"
    set "pidkey=84NGF-MHBT6-FXBX8-QWJK7-DRR8H"
    set "skus=EducationN"
    goto activation
:Enterprise
    set "sku=4"
    set "pidkey=XGVPP-NMH47-7TTHJ-W3FW7-8HV2C"
    set "skus=Enterprise"
    goto activation
:EnterpriseN
    set "sku=27"
    set "pidkey=YHMNQ-PPQW2-P8PGP-32643-C372T"
    set "skus=EnterpriseN"
    goto activation
:EnterpriseS
    set "sku=125"
    set "pidkey=NK96Y-D9CD8-W44CQ-R8YTK-DYJWX"
    set "skus=EnterpriseS"
    goto activation
:EnterpriseSN
    set "sku=126"
    set "pidkey=C73T8-FNJRG-FTQWK-2JP2R-VMJWR"
    set "skus=EnterpriseSN"
:activation
    cls
    for /f "tokens=3 delims=." %%a in ('ver') do (set version=%%a)
    if not exist "%SystemRoot%\System32\spp\tokens\skus\%skus%" (
    title Windows 10 数字权利激活脚本－正在安装数字证书
    ".\bin\7z.exe" x ".\skus\%version%.7z" -o"%SystemRoot%\%digit%" %skus% -aoa >nul 2>nul 
    if not exist "%SystemRoot%\System32\spp\tokens\skus\%skus%" goto end
    echo ----------------------------------------------------------
    echo 【INFO】%date% %time% 正在安装数字证书......
    cscript /nologo %SystemRoot%\System32\slmgr.vbs /rilc >nul
    ) else (
    goto next
        )
:next
    title Windows 10 数字权利激活脚本－正在激活
    for /f "tokens=3" %%k in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services\wuauserv" /v "start"') do (set services=%%k)
    if /i "%services:~-1%" gtr "3" (
    echo ----------------------------------------------------------
    echo 【INFO】%date% %time% 正在开启 Windows Update 服务
    sc config wuauserv start= auto >nul 2>nul
    ) else (
    goto activation1
        )
:activation1
    echo ----------------------------------------------------------
    echo 【INFO】%date% %time% 正在安装产品密钥......
    echo ----------------------------------------------------------
    cscript /nologo %SystemRoot%\System32\slmgr.vbs /ipk %pidkey% || goto error1
    timeout /nobreak /t 2 >nul
    wmic path SoftwareLicensingProduct where (LicenseStatus='1' and GracePeriodRemaining='0') get Name 2>nul | findstr /i "Windows" >nul 2>&1 && (
	echo. 
	color 2f
    echo ----------------------------------------------------------
    echo 【ERRO】%date%%time% 此计算机已永久激活！
    echo 【ERRO】%date%%time% 请在未激活时运行此脚本
    echo ----------------------------------------------------------
	echo ***********************按任意键退出***********************
	pause >nul
	exit	
	)
    sc start wuauserv >nul 2>nul
    echo ----------------------------------------------------------
    echo 【INFO】%date% %time% 正在添加注册表......
    reg add "HKLM\SYSTEM\Tokens" /v "Channel" /t REG_SZ /d "Retail" /f >nul
    reg add "HKLM\SYSTEM\Tokens\Kernel" /v "Kernel-ProductInfo" /t REG_DWORD /d "%sku%" /f >nul
    reg add "HKLM\SYSTEM\Tokens\Kernel" /v "Security-SPP-GenuineLocalStatus" /t REG_DWORD /d "1" /f >nul
    reg add "HKCU\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "\"%~dp0bin\%bit%\gatherosstate.exe"\" /d "^ WIN7RTM" /f >nul
    echo ----------------------------------------------------------
    echo 【INFO】%date% %time% 正在获取数字门票......
    echo ----------------------------------------------------------
    set "number=0"
:Reset
    set /a "number=%number%+1"
    start /wait "" ".\bin\%bit%\gatherosstate.exe"
    timeout /nobreak /t 3 >nul
    if exist ".\bin\%bit%\GenuineTicket.xml" (
    goto app
        )

    if "%number%" lss "3" (
    goto Reset
        )
    goto end1
:app
    clipup -v -o -altto .\bin\%bit%\
    echo ----------------------------------------------------------
    cscript /nologo %SystemRoot%\system32\slmgr.vbs /ato
    echo ----------------------------------------------------------
    echo 【INFO】%date% %time% 正在删除注册表......
    reg delete "HKLM\SYSTEM\Tokens" /f >nul
    reg delete "HKCU\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "\"%~dp0bin\%bit%\gatherosstate.exe"\" /f >nul
:error1
    if /i "%services:~-1%" gtr "3" (
    echo ----------------------------------------------------------
    echo 【INFO】%date% %time% 正在禁用Update服务...
    sc stop wuauserv >nul 2>nul
    sc config wuauserv start= disabled >nul 2>nul
    ) else (
    goto information
        )
:information
    title Windows 10 数字权利激活脚本－版本信息
    echo ----------------------------------------------------------
	echo *************************版本信息*************************
    echo ----------------------------------------------------------
    for /f "delims=" %%f in ('wmic os get caption ^| findstr /i "Microsoft"') do (echo %%f)
    for /f "tokens=2-4" %%f in ('ver') do (echo %%f %%g %%h)
    for /f "tokens=5 delims= " %%f in ('cscript /nologo %SystemRoot%\System32\slmgr.vbs /dli ^| findstr /i "channel"') do  (echo 产品密钥通道: %%f)
    for /f "skip=3 delims=" %%f in ('cscript /nologo %SystemRoot%\System32\slmgr.vbs /dli') do (echo %%f)
    echo ----------------------------------------------------------
    pause
    exit
:install
    title Windows 10 数字权利激活脚本－安装产品密钥
    echo ----------------------------------------------------------
    set /p "install=请输入或粘贴需要安装的密钥，按 Enter 安装:"
    cls
    echo ----------------------------------------------------------
    echo 【INFO】%date% %time% 正在安装产品密钥......
    echo ----------------------------------------------------------
    cscript /nologo %SystemRoot%\System32\slmgr.vbs /ipk %install% || goto error
    echo ----------------------------------------------------------
    for /f "tokens=3" %%k in ('cscript /nologo %SystemRoot%\System32\slmgr.vbs /dti') do (set ID=%%k)
    for /f "delims=" %%g in ("%ID%") do (
    set "pid0=%%g"
    set "pid1=!pid0:~0,7!"
    set "pid2=!pid0:~7,7!"
    set "pid3=!pid0:~14,7!"
    set "pid4=!pid0:~21,7!"
    set "pid5=!pid0:~28,7!"
    set "pid6=!pid0:~35,7!"
    set "pid7=!pid0:~42,7!"
    set "pid8=!pid0:~49,7!"
    set "pid9=!pid0:~56,7!"
    echo 安装 ID: !pid1! !pid2! !pid3! !pid4! !pid5! !pid6! !pid7! !pid8! !pid9!
        )
:error
    echo ----------------------------------------------------------
    pause
	exit
:uninstall
    title Windows 10 数字权利激活脚本－卸载 KEY
    echo ----------------------------------------------------------
    echo 【INFO】%date% %time% 正在卸载默认密钥...
    echo ----------------------------------------------------------
    cscript /nologo %SystemRoot%\system32\slmgr.vbs /upk
    echo ----------------------------------------------------------
	pause
	exit
:generate
    title Windows 10 数字权利激活脚本－生成静默脚本
    echo ----------------------------------------------------------
    echo **************************请选择**************************
    echo ----------------------------------------------------------
    echo                          [1]X64
    echo                          [2]X86
    echo                          [3]返回
    echo ----------------------------------------------------------
    echo.
    choice /n /c 123 /m "请输入数字选择:"
    if errorlevel 3 goto menu
    if errorlevel 2 (set "bits=x86" && goto StartCopy)
    if errorlevel 1 (set "bits=x64" && goto StartCopy)
:StartCopy
    cls
    echo ----------------------------------------------------------
    echo 【INFO】%date% %time% 正在生成静默脚本......
    echo ----------------------------------------------------------
    mkdir "$OEM$\$$\Setup\Scripts\bin\%bits%"
    copy /y ".\bin\script.txt" "$OEM$\$$\Setup\Scripts\SetupComplete.cmd" >nul 2>nul || goto error2
    copy /y ".\bin\%bits%\gatherosstate.exe" "$OEM$\$$\Setup\Scripts\bin\%bits%\gatherosstate.exe" >nul 2>nul || goto error2
    copy /y ".\bin\%bits%\slc.dll" "$OEM$\$$\Setup\Scripts\bin\%bits%\slc.dll" >nul 2>nul || goto error2
    echo 【INFO】%date% %time% 用于 %bits%系统的静默脚本复制成功。
    echo.
	pause
	exit
:error2
	color 4f
    echo ----------------------------------------------------------
    echo 【ERRO】%date% %time% 用于 %bits% 的脚本复制失败
    echo 【ERRO】%date% %time% 错误：脚本目录不完整
    echo ----------------------------------------------------------
	echo ***********************按任意键退出***********************
    pause
    exit
:end
	color 4f
    echo ----------------------------------------------------------
    echo 【ERRO】%date%%time% 错误：证书复制失败！
    echo 【ERRO】%date%%time% 错误：系统可能不支持转换
    echo ----------------------------------------------------------
	echo ***********************按任意键退出***********************
    pause >nul
	exit
:end1
	color 4f
    echo ----------------------------------------------------------
    echo 【ERRO】%date% %time% 数字门票获取失败！
    echo 【INFO】%date% %time% 正在删除注册表...
    echo 【ERRO】%date% %time% Windows 10 %skus% 激活失败！
    echo ----------------------------------------------------------
    reg delete "HKLM\SYSTEM\Tokens" /f >nul
    reg delete "HKCU\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "\"%~dp0bin\%bit%\gatherosstate.exe"\" /f >nul
    echo ----------------------------------------------------------
	echo ***********************按任意键退出***********************
    pause >nul
    exit
