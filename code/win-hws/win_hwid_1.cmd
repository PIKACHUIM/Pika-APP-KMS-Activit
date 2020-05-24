echo off
color 3f
title 皮卡丘KMS激活工具
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
cls
    if /i "%PROCESSOR_IDENTIFIER:~0,3%" equ "x86" (
    set "Digit=System32\spp\tokens\skus"
    ) else (
    set "Digit=SysNative\spp\tokens\skus"
        )

    for /f "tokens=6 delims=[]. " %%a in ('ver') do (set Version=%%a)
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
    goto :start

    :menu
    title Windows 10 数字权利激活脚本－选择功能
    cls
    echo ----------------------------------------------------------
    echo     请选择任务。
    echo ----------------------------------------------------------
    echo     [1] 一键激活当前版本
    echo     [2] 自定选择版本激活
    echo     [3] 查看当前系统信息
    echo     [4] 安装系统产品密钥
    echo     [5] 清除系统产品密钥
    echo     [6] 清除KMS 激活状态
    echo     [7] 生成静默激活脚本
    echo     [8] 访问脚本发布网站
    echo     [0] 退出脚本
    echo ----------------------------------------------------------

    choice /n /c:123456780 /m:"请输入数字选择:"
    cls
    if errorlevel 9 exit
    if errorlevel 8 goto url
    if errorlevel 7 goto export
    if errorlevel 6 goto uninstall-kms
    if errorlevel 5 goto uninstall-key
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
    echo A= Windows 10 S               证书 16299以上
    echo B= Windows 10 S             N 证书 16299以上
    echo ----------------------------------------------------------
    echo 以下版本支持安装 16299  17134  17763  18362  18363  19041 的证书。
    echo C= Windows 10 家庭版
    echo D= Windows 10 家庭版        N
    echo E= Windows 10 家庭版 国家版
    echo F= Windows 10 家庭版 单语言
    echo ----------------------------------------------------------
    echo G= Windows 10 专业版
    echo H= Windows 10 专业版        N
    echo I= Windows 10 专业版 教育版
    echo J= Windows 10 专业版 教育版 N
    echo K= Windows 10 专业版 工作站
    echo L= Windows 10 专业版 工作站 N
    echo ----------------------------------------------------------
    echo M= Windows 10 教育版
    echo N= Windows 10 教育版        N
    echo ----------------------------------------------------------
    echo O= Windows 10 企业版
    echo P= Windows 10 企业版        N
    echo Q= Windows 10 企业版          LTSB 2016/2019
    echo R= Windows 10 企业版        N LTSB 2016/2019
    echo S= Windows 10 企业版          物联 18362以上
    echo ----------------------------------------------------------
    echo T= Windows 10 企业版 虚拟     支持 17134以上
    echo U= Windows Server   数据版    支持 2016/2019
    echo V= Windows Server   标准版    支持 2016/2019
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
    if /i "%pid%"=="s" goto IoTEnterprise
    if /i "%pid%"=="t" goto ServerRdsh
    if /i "%pid%"=="u" goto ServerDatacenter
    if /i "%pid%"=="v" goto ServerStandard

    echo. & echo 输入错误，按任意键重新输入。
    pause >nul && cls && goto Choice

    :start
    wmic path SoftwareLicensingProduct where (LicenseStatus='1' and GracePeriodRemaining='0') get Name 2>nul | findstr /i "Windows" >nul 2>&1 && (	echo. 
	color 2f
    echo ----------------------------------------------------------
    echo 【ERRO】%date%%time% 此计算机已永久激活！
    echo 【ERRO】%date%%time% 请在未激活时运行此脚本
    echo ----------------------------------------------------------
	echo ***********************按任意键退出***********************
	pause >nul && exit )
    for /f "tokens=3 delims= " %%i in ('cscript /nologo %SystemRoot%\System32\slmgr.vbs /dli ^| findstr /i "Edition"') do (set Edition=%%i)
    goto %Edition%

    :activation
	color 3f
    cls
    if /i "%License:~-4%" equ "GVLK" (
    set "ActiveType=KMS38"
    echo ----------------------------------------------------------
cscript /nologo %SystemRoot%\system32\slmgr.vbs /ckms
    ) else (
    set "ActiveType=Digital"
      )

    if not exist "%SystemRoot%\System32\spp\tokens\skus\%skus%" (
    title Windows 10 数字权利激活脚本－正在安装数字证书

    ".\bin\7z.exe" x ".\skus\%Version%.7z" -o"%SystemRoot%\%Digit%" %skus% -aoa >nul 2>nul 
    if not exist "%SystemRoot%\System32\spp\tokens\skus\%skus%" goto end
    echo ----------------------------------------------------------
    echo 正在安装数字证书，此过程时间稍长，请耐心等待完成。
    cscript /nologo %SystemRoot%\System32\slmgr.vbs /rilc >nul
    ) else (
    goto next
        )

    :next
	color 5f
    title Windows 10 数字权利激活脚本－正在激活
    if /i "%skus%" equ "ServerRdsh" (goto Active-Rdsh)
    for /f "tokens=3" %%k in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services\wuauserv" /v "start"') do (set services=%%k)
    echo ----------------------------------------------------------
    echo 正在开启 Windows Update 服务。
    sc config wuauserv start= auto >nul 2>nul
    ) else (
    goto activation1
        )

    :activation1
	color 6f
    echo ----------------------------------------------------------
    echo      正在安装产品密钥，请等待完成。
    echo ----------------------------------------------------------
    cscript /nologo %SystemRoot%\System32\slmgr.vbs /ipk %pidkey% || goto error1
    timeout /nobreak /t 2 >nul
    wmic path SoftwareLicensingProduct where (LicenseStatus='1' and GracePeriodRemaining='0') get Name 2>nul | findstr /i "Windows" >nul 2>&1 && (echo. & echo 您选择的版本已在本计算机上永久激活，无需再次激活。 & echo 请按任意键重新选择。 & pause >nul && goto choice )

    sc start wuauserv >nul 2>nul
    echo ----------------------------------------------------------
    echo 正在添加注册表。
    reg add "HKLM\SYSTEM\Tokens" /v "Channel" /t REG_SZ /d "%License%" /f >nul
    reg add "HKLM\SYSTEM\Tokens\Kernel" /v "Kernel-ProductInfo" /t REG_DWORD /d "%sku%" /f >nul
    reg add "HKLM\SYSTEM\Tokens\Kernel" /v "Security-SPP-GenuineLocalStatus" /t REG_DWORD /d "1" /f >nul
    reg add "HKCU\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "\"%~dp0bin\%ActiveType%\gatherosstate.exe"\" /d "^ WIN7RTM" /f >nul

    echo ----------------------------------------------------------
    echo     正在获取数字门票，请等待完成。
    echo ----------------------------------------------------------

    set "number=0"
    :Reset
	color 8f
    set /a "number=%number%+1"
    start /wait "" ".\bin\%ActiveType%\gatherosstate.exe"
    timeout /nobreak /t 3 >nul
    if exist ".\bin\%ActiveType%\GenuineTicket.xml" (
    goto app
        )

    if "%number%" lss "3" (
    goto Reset
        )
    goto end1

    :app
    clipup -v -o -altto .\bin\%ActiveType%\
	color af
    if /i "%License:~-4%" equ "GVLK" (
    echo ----------------------------------------------------------
    cscript /nologo %SystemRoot%\system32\slmgr.vbs /skms "127.0.0.1"
    ) else (
    echo ----------------------------------------------------------
    cscript /nologo %SystemRoot%\system32\slmgr.vbs /ato
      )

    if %errorlevel% equ 0 (goto delete-reg)
    if "%Version%" neq "14393" (goto delete-reg)
    if /i "%skus:~0,11%" neq "EnterpriseS" (goto delete-reg)
	color 4f
    echo ----------------------------------------------------------
    echo     Windows 10 %skus%，未能使用数字权利激活。
    echo     是否切换至 KMS 激活？是^(Y^) ; 否^(N^)。
    echo ----------------------------------------------------------
    choice /n /c:yn /m:"请选择 Y / N"

    if errorlevel 2 (exit)
    if errorlevel 1 (goto EnterpriseS-KMS)

    :delete-reg
    echo ----------------------------------------------------------
    echo 正在删除注册表。
    reg delete "HKLM\SYSTEM\Tokens" /f >nul
    reg delete "HKCU\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "\"%~dp0bin\%ActiveType%\gatherosstate.exe"\" /f >nul

    :error1
	color 4f
    if /i "%services:~-1%" gtr "3" (
    echo ----------------------------------------------------------
    echo 正在禁用 Windows Update 服务。
    sc stop wuauserv >nul 2>nul
    sc config wuauserv start= disabled >nul 2>nul
    goto information
    ) else (
    goto information
        )

    :Active-Rdsh
    echo ----------------------------------------------------------
    echo      正在安装产品密钥，请等待完成。
    cscript /nologo %SystemRoot%\System32\slmgr.vbs /ipk %pidkey%
    echo ----------------------------------------------------------
    echo      正在激活 Windows，请等待完成。
    cscript /nologo %SystemRoot%\system32\slmgr.vbs /ato

    :information
    title Windows 10 数字权利激活脚本－版本信息
    echo ----------------------------------------------------------
    echo 版本信息：
    echo ----------------------------------------------------------
    for /f "delims=" %%f in ('wmic os get caption ^| findstr /i "Microsoft"') do (echo %%f)
    for /f "tokens=3 delims= " %%a in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v "ReleaseId"') do (echo 版本: %%a)
    for /f "tokens=4 delims=[] " %%f in ('ver') do (echo ^(OS 内部版本: %%f^))
for /f "tokens=5 delims= " %%f in ('cscript /nologo %SystemRoot%\System32\slmgr.vbs /dli ^| findstr /i "channel"') do  (echo 产品密钥通道: %%f)
    for /f "skip=3 delims=" %%f in ('cscript /nologo %SystemRoot%\System32\slmgr.vbs /dli') do (echo %%f)
    echo ----------------------------------------------------------

    pause
    exit

    :url
    start "" "http://bbs.pcbeta.com/forum.php?mod=viewthread&tid=1786788&page=1#pid48314667"
    goto menu

    :install
	color 1f
    title Windows 10 数字权利激活脚本－安装产品密钥
    echo ----------------------------------------------------------
    set /p "install=请输入或粘贴需要安装的密钥，按 Enter 安装:"
    cls
    echo ----------------------------------------------------------
    echo      正在安装产品密钥，请等待完成。
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

    :uninstall-key
	color 4f
    title Windows 10 数字权利激活脚本－卸载 KEY
    echo ----------------------------------------------------------
    echo     正在卸载系统密钥，请等待完成。
    echo ----------------------------------------------------------
    cscript /nologo %SystemRoot%\system32\slmgr.vbs /upk
    echo ----------------------------------------------------------
    pause
    exit

    :uninstall-kms
	color 5f
    echo ----------------------------------------------------------
    title Windows 10 数字权利激活脚本－清除 KMS 信息
    echo ----------------------------------------------------------
    echo      正在卸载密钥，请等待完成。
    echo ----------------------------------------------------------
    cscript /nologo %SystemRoot%\System32\slmgr.vbs /upk
    echo ----------------------------------------------------------
    echo      正在清除系统密钥管理服务和计算机名称，请等待完成。
    echo ----------------------------------------------------------
    cscript /nologo %SystemRoot%\system32\slmgr.vbs /ckms
    echo ----------------------------------------------------------
    echo      正在重置计算机的受权状态，请等待完成。
    echo ----------------------------------------------------------
    cscript /nologo %SystemRoot%\system32\slmgr.vbs /rearm
    echo ----------------------------------------------------------
    echo      KMS 密钥服务信息清除完成，重新启动后请用脚本中的选项2激活本系统。
    echo     请选择是否立即重启计算机？立即重启 ^(R^) ; 退出脚本 ^(X^)。
    echo ----------------------------------------------------------
    choice /n /c:rx /m:"请选择 R / X"
    if %errorlevel% equ 2 (exit)
    if %errorlevel% equ 1 (shutdown /r /t 1)
    exit

    :export
    title Windows 10 数字权利激活脚本－生成静默脚本

    :StartCopy
    cls
    echo ----------------------------------------------------------
    echo 正在生成静默脚本。
    echo ----------------------------------------------------------

    mkdir "$OEM$\$$\Setup\Scripts\bin"
    copy /y ".\bin\script\script.txt" "$OEM$\$$\Setup\Scripts\SetupComplete.cmd" >nul 2>nul || goto error2
    xcopy /i /q /y ".\bin\Digital" "$OEM$\$$\Setup\Scripts\bin\Digital" >nul 2>nul || goto error2
    xcopy /i /q /y ".\bin\KMS38" "$OEM$\$$\Setup\Scripts\bin\KMS38" >nul 2>nul || goto error2

    echo 静默脚本复制成功。
    echo.
    pause
    exit

    :error2
    echo 静默脚本复制失败，请检查当前脚本目录是否完整。
    rmdir /s /q "$OEM$" >nul
    echo.
    pause
    exit

    :error3
    echo ----------------------------------------------------------
    echo 您选择的 Windows 10 S，仅支持激活 Windows 10 ^(16299^)版本。
    for /f "tokens=4 delims=[] " %%a in ('ver') do (echo     当前系统版本 ^(%%a^)，暂不支持激活 Windows 10 S。)
    echo      请按任意键重新选择。
    echo ----------------------------------------------------------
    pause >nul
    goto Choice

    :error4
    echo ----------------------------------------------------------
    for /f "tokens=4 delims=[] " %%a in ('ver') do (echo     您的系统版本 ^(Windows 10 %%a^)，暂不支持激活 Windows 10 企业版 LTSB 2016/LTSC 2019。)
    echo     Windows 10 企业版 LTSB 2016 或 LTSC 2019 仅支持激活以下版本
    echo     1607=14393;1709=16299;1803=17134;1809=17763^(KMS^)
    echo      请按任意键重新选择。
    echo ----------------------------------------------------------
    pause >nul
    goto Choice

    :error5
    echo ----------------------------------------------------------
    echo 您选择的 Windows Server，仅支持激活 Server 2016 ^(版本 14393^)，或 Server 2019 ^(版本 17763^)。
for /f "tokens=4 delims=[] " %%a in ('ver') do (echo     当前系统版本 ^(%%a^)，暂不支持激活 Windows Server 2016 或 Server 2019)
    echo      请按任意键重新选择。
    echo ----------------------------------------------------------
    pause >nul
    goto Choice

     :error6
    echo ----------------------------------------------------------
    echo Windows 10 IOT 企业版，仅支持激活 ^(18362^) 以上版本。
for /f "tokens=4 delims=[] " %%a in ('ver') do (echo     当前系统版本 ^(%%a^)，暂不支持激活 IOT 企业版。)
    echo      请按任意键重新选择。
    echo ----------------------------------------------------------
    pause >nul
    goto Choice

    :error7
    echo ----------------------------------------------------------
    echo 适用于虚拟桌面的 Windows 10 企业版，仅支持激活 ^(17134^) 以上版本。
for /f "tokens=4 delims=[] " %%a in ('ver') do (echo     当前系统版本 ^(%%a^)，暂不支持激活 适用于虚拟桌面的 Windows 10 企业版。)
    echo     请按任意键重新选择。
    echo ----------------------------------------------------------
    pause >nul
    goto Choice

    :end
    echo ----------------------------------------------------------
    echo 证书复制失败，请检查 skus 目录是否完整。
    echo 或检查选择的目标版本，当前系统是否支持转换。
    echo ----------------------------------------------------------
    echo 按任意键退出脚本。
    pause >nul
    exit

    :end1
    echo ----------------------------------------------------------
    echo 数字门票获取失败， Windows 10 %skus% 未能激活。
    echo ----------------------------------------------------------
    echo 正在删除注册表。
    reg delete "HKLM\SYSTEM\Tokens" /f >nul
    reg delete "HKCU\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "\"%~dp0bin\%ActiveType%\gatherosstate.exe"\" /f >nul
    echo ----------------------------------------------------------
    echo 按任意键退出。
    pause >nul
    exit


    :Cloud
    if "%Version%" equ "16299" (
    set "sku=178"
    set "pidkey=V3WVW-N2PV2-CGWC3-34QGF-VMJ2C"
    set "License=Retail"
    set "skus=Cloud"
    goto activation
    ) else (
    goto error3
      )

    :CloudN
    if "%Version%" equ "16299" (
    set "sku=179"
    set "pidkey=NH9J3-68WK7-6FB93-4K3DF-DJ4F6"
    set "License=Retail"
    set "skus=CloudN"
    goto activation
    ) else (
    goto error3
      )

    :Core
    set "sku=101"
    set "pidkey=YTMG3-N6DKC-DKB77-7M9GH-8HVX7"
    set "License=Retail"
    set "skus=Core"
    goto activation

    :CoreN
    set "sku=98"
    set "pidkey=4CPRK-NM3K3-X6XXQ-RXX86-WXCHW"
    set "License=Retail"
    set "skus=CoreN"
    goto activation

    :CoreCountrySpecific
    set "sku=99"
    set "pidkey=N2434-X9D7W-8PF6X-8DV9T-8TYMD"
    set "License=Retail"
    set "skus=CoreCountrySpecific"
    goto activation

    :CoreSingleLanguage
    set "sku=100"
    set "pidkey=BT79Q-G7N6G-PGBYW-4YWX6-6F4BT"
    set "License=Retail"
    set "skus=CoreSingleLanguage"
    goto activation

    :Professional
    set "sku=48"
    set "pidkey=VK7JG-NPHTM-C97JM-9MPGT-3V66T"
    set "License=Retail"
    set "skus=Professional"
    goto activation

    :ProfessionalN
    set "sku=49"
    set "pidkey=2B87N-8KFHP-DKV6R-Y2C8J-PKCKT"
    set "License=Retail"
    set "skus=ProfessionalN"
    goto activation

    :ProfessionalEducation
    set "sku=164"
    set "pidkey=8PTT6-RNW4C-6V7J2-C2D3X-MHBPB"
    set "License=Retail"
    set "skus=ProfessionalEducation"
    goto activation

    :ProfessionalEducationN
    set "sku=165"
    set "pidkey=GJTYN-HDMQY-FRR76-HVGC7-QPF8P"
    set "License=Retail"
    set "skus=ProfessionalEducationN"
    goto activation

    :ProfessionalWorkstation
    set "sku=161"
    set "pidkey=DXG7C-N36C4-C4HTG-X4T3X-2YV77"
    set "License=Retail"
    set "skus=ProfessionalWorkstation"
    goto activation

    :ProfessionalWorkstationN
    set "sku=162"
    set "pidkey=WYPNQ-8C467-V2W6J-TX4WX-WT2RQ"
    set "License=Retail"
    set "skus=ProfessionalWorkstationN"
    goto activation

    :Education
    set "sku=121"
    set "pidkey=YNMGQ-8RYV3-4PGQ3-C8XTP-7CFBY"
    set "License=Retail"
    set "skus=Education"
    goto activation

    :EducationN
    set "sku=122"
    set "pidkey=84NGF-MHBT6-FXBX8-QWJK7-DRR8H"
    set "License=Retail"
    set "skus=EducationN"
    goto activation

    :Enterprise
    set "sku=4"
    set "pidkey=XGVPP-NMH47-7TTHJ-W3FW7-8HV2C"
    set "License=OEM:NONSLP"
    set "skus=Enterprise"
    goto activation

    :EnterpriseN
    set "sku=27"
    set "pidkey=YHMNQ-PPQW2-P8PGP-32643-C372T"
    set "License=Volume:MAK"
    set "skus=EnterpriseN"
    goto activation

    :EnterpriseS
    if "%Version%" equ "17763" (
    set "sku=125"
    set "pidkey=M7XTQ-FN8P6-TTKYV-9D4CC-J462D"
    set "License=Volume:GVLK"
    set "skus=EnterpriseS"
    goto activation
      )
    if "%Version%" geq "14393" (
    if "%Version%" leq "17134" (
    set "sku=125"
    set "pidkey=NK96Y-D9CD8-W44CQ-R8YTK-DYJWX"
    set "License=Retail"
    set "skus=EnterpriseS"
    goto activation
    ) else (
    goto error4
      )
      )

    :EnterpriseSN
    if "%Version%" equ "17763" (
    set "sku=126"
    set "pidkey=92NFX-8DJQP-P6BBQ-THF9C-7CG2H"
    set "License=Volume:GVLK"
    set "skus=EnterpriseSN"
    goto activation
      )
    if "%Version%" geq "14393" (
    if "%Version%" leq "17134" (
    set "sku=126"
    set "pidkey=C73T8-FNJRG-FTQWK-2JP2R-VMJWR"
    set "License=Retail"
    set "skus=EnterpriseSN"
    goto activation
    ) else (
    goto error4
      )
      )

    :IoTEnterprise
    if "%Version%" geq "18362" (
    set "sku=188"
    set "pidkey=XQQYW-NFFMW-XJPBH-K8732-CKFFD"
    set "License=OEM:NONSLP"
    set "skus=IoTEnterprise"
    goto activation
    ) else (
    goto error6
      )

    :ServerRdsh
    if "%Version%" geq "17134" (
    set "sku=175"
    set "pidkey=NJCF7-PW8QT-3324D-688JX-2YV66"
    set "License=Retail"
    set "skus=ServerRdsh"
    goto activation
    ) else (
    goto error7
      )

    :ServerDatacenter
    if "%Version%" equ "17763" (
    set "sku=8"
    set "pidkey=WMDGN-G9PQG-XVVXX-R3X43-63DFG"
    set "License=Volume:GVLK"
    set "skus=ServerDatacenter"
    goto activation
    ) else if "%Version%" equ "14393" (
    set "sku=8"
    set "pidkey=CB7KF-BWN84-R7R2Y-793K2-8XDDG"
    set "License=Volume:GVLK"
    set "skus=ServerDatacenter"
    goto activation
      )
    goto error5

    :ServerStandard
    if "%Version%" equ "17763" (
    set "sku=7"
    set "pidkey=N69G4-B89J2-4G8F4-WWYCC-J464C"
    set "License=Volume:GVLK"
    set "skus=ServerStandard"
    goto activation
    ) else if "%Version%" equ "14393" (
    set "sku=7"
    set "pidkey=WC2BQ-8NRM3-FDDYY-2BFGV-KHKQY"
    set "License=Volume:GVLK"
    set "skus=ServerStandard"
    goto activation
      )
    goto error5

    :EnterpriseS-KMS
    if /i "%skus%" equ "EnterpriseS" (
    set "sku=125"
    set "pidkey=DCPHK-NFMTC-H88MJ-PFHPY-QJ4BJ"
    set "License=Volume:GVLK"
    set "skus=EnterpriseS"
    goto activation
    ) else (
    set "sku=126"
    set "pidkey=QFFDN-GRT3P-VKWWX-X7T3R-8B639"
    set "License=Volume:GVLK"
    set "skus=EnterpriseSN"
    goto activation
      )
