
                            PIDKey Portable от Ratiborus,
                                       MSFree Inc.

       		                        简介:
                          —————————————————————————————————
此程序用来查看有关MS产品密钥的信息并将其保存到一个文件中。简单说就是代替VAMT KEY管理部分功能的一个小工具！

       		                       软件使用教程:
                          —————————————————————————————————
1、双击PIDKey.exe即可启动。
2、支持一次性从剪贴板添加单个或多个key，复制key后在key文本框处单击鼠标即自动读取剪贴板中的key，再点击GO!就开始校验、添加。
3、校验密钥时会尝试所有的密钥校验文件，从列表中的第一个开始，知道找到正确的密钥信息。
4、软件中存在一些常见的密钥校验文件，你也可以自定义自己的密钥校验文件。如果你把你的密钥校验文件放到本程序文件夹中，该文件将被保存在一个相对路径中，不够改程序放到哪儿都可以调用它。
5、如果选择了自定义密钥校验文件，删除按钮将被激活。
6、可从文件中检查密钥信息，可以从任何文本格式的文件中正确读取密钥并添加，即使文件中包含无关信息。
7、在激活备份文件夹中，Activation_Restore.cmd文件被创建。使用它你可以随时恢复激活，甚至无需使用PIDKEY程序。
                          —————————————————————————————————
                                                                Ratiborus


更新日志:
v2.1.2 build 1015 
 -Fixed minor bugs.

v2.1.2 build 1014 
 -Small interface changes.

v2.1.2 build 1013 
 -Optimized some functions to accelerate the program.
 -Small interface changes.

v2.1.2 build 1010
 -Small changes to the interface.

v2.1.1 build 1006
-Key Groups beginning with "Server Cloud12" need to recheck, from the table. They will
 be transferred to the group "Server Cloud 2012" 
-Key Groups beginning with "Server Cloud2016" need to recheck, from the table. They will
 be transferred to the group "Server Cloud 2016"
-Key Groups "Not Found" need to recheck.

v2.1.1 build 1005
 -Small changes to the interface.
 -Changes in function prediction configuration.
 -Fixed minor bugs.

v2.1.1 build 1000
 -The program window has become smaller, 780x550. Changed font and button layout.
 -Key Groups beginning with "Server 12" need to recheck, from the table. They will
  be transferred to the group "Server 2012"
 -When checking the keys works prediction function, increasing the speed of work.
 -The program works on Windows XP, only the x86 version.
 -Added configuration to determine Windows 10 b14352 keys, definition  works only
  on Windows 7-10, on XP not working. New DLL pidgenx.dll does not support Windows XP.

v2.1.0 build 1001
 -Small changes to the interface.

v2.1.0 build 1000
-Small changes to the interface, added compatibility with Windоws 10 build 14352.

v2.0.9 build 1008
 -Optimized some functions to speed up the program.

v2.0.9 build 1005
 -Optimized some functions to speed up the program.

v2.0.9 build 1004
 -When the key is being identified the program displays a parameter called "Total keys"
  "Total keys" - is the number of keys related to a sub-type (e.g. X18-32647, X20-32655, 
  [TH] X20-17626...) which can be released just by M$.

v2.0.9 build 1003
 -On Windows 10 OSPP is not properly determined, Office 15 keys are
  not set.

v2.0.9 build 1002
 -Optimized some functions to speed up the program.
 -The whole configuration is stored in INI file.
 -Now you can create any number of configurations (number of files pconfig.xrm-ms) in this 
  version, the list will grow dynamically as you add new configurations. You can make a list
  of any size.
 -When the program is run, the keys database is unpacked in folder C:\Windows\Temp
 -You can run multiple instances/copies of the program, but be careful if you are running a 
  copy from the same folder, the latest running instance/copy of the program overwrites keys
  when closing it!!!

PS: In the 1001 test assembly key database is stored in the program folder, and if the length 
  of the path to the database exceeded 259 characters, then the entire database is not 
  displayed, the keys are lost. In build 1002 the keys database is unpacked again, in 
  C:\Windows\Temp.


v2.0.9 build 1000 
 -Optimized some functions to accelerate the program. 
 -Small interface changes.

v2.0.8 build 1001
 -On Windows 10 Technical Preview OSPP is not properly determined, Office 14 keys are
  not set.

v2.0.8 build 1000
 -程序含有多种语言，增加更改界面语言功能。
 -增加产品许可证状态 Product.LicenseStatusReason,
  如果参数不等于零(错误0x4004F040).

v2.0.7 build 2120
 -优化从剪切板输入密钥的函数。
 -当CSVLK密钥被安装在主机或KMS主机的Office14/15上时，显示有关KMS服务的完整信息。
  
v2.0.7 build 2119
 -修正了在Windows 7中不显示许可状态。
 
v2.0.7 build 2117
 -修正了改变产品密钥渠道后，不能被激活。
 -修正了保存密钥数据库时的错误。
 -提高软件运行速度。
 
v2.0.7 build 2116
 -其他细节问题修复。

v2.0.7 build 2114
 -重写的设置密钥和激活函数。 
 -改进了密钥排序。 
 -增加了安装密钥和激活界面。
 -新增备份和还原激活信息功能。 
  注意：还原激活信息功能不一定任何时候都有效！
 -增加“电话激活”选项。
 -增加“许可证信息”选项。

v2.0.7 build 2000 Final (安装计划我做完了一切我想做的事情 ;) )
 -修正了少量错误。
 -添加密钥时，如果密钥被封会显示消息。
 -在列表试图中显示每组中密钥的数量。
 -右键菜单增加“将所选密钥移动到已封密钥数据库”
 -从任意文件夹恢复密钥数据库。
 -增加删除选定的密钥功能。
 
v2.0.6.1
 -修正了复制所选密钥到一个文本文件的错误。
 
v2.0.6
 -增加按许可证渠道(CSVLK, GVLK, OEM, MAK, RETAIL)隐藏密钥功能。 
 -增加把已封密钥保存到一个文本文档的功能。
 -在В Settings.ini文件中增加永久保存数据库参数。"SaveBasePermanently=False/True" 
  False - 当退出程序时保存数据库。;
  True - 添加每一个密钥时保存一次。
  
v2.0.5
 -修复了没有网络连接时更新激活次数的出现错误。
 -增加保存和还原密钥功能。
 -修正了少量错误。
 
v2.0.4
 -修正了一些错误。 
 -增加撤消和重做按钮。
 -增加密码保护密钥数据库功能。 
 -增加鼠标旋停在密钥上，会出现一个提示框功能。
 -初始密钥存储在一个加密文件中，KEYS文件夹不再需要。
 -当你处理*.key和*.cilx格式的密钥文件时，会添加到数据库中。
 -修复了一些文件列表分类方面的bug

v2.0.3
 -优化密钥查找函数。
 -当你查找.cilx格式的密钥时，该密钥的备注会自动被复制出来。
 -将密钥进行分类。
 -修正了许多错误，但并不是所有的都被修正了。

v2.0.2
 -软件界面的调整。 PID Checker windows combinded with base keys.

v2.0.1
 -软件界面的调整。
 
v1.0.5.1
 -提高软件运行速度。
 -软件界面的调整。
 
v1.0.4
 -新增查看和编辑密钥的功能。
 
v1.0.3
 -输入密钥，可以从任何文本格式的文件中正确读取密钥。
 -增加了密钥排序功能。
 -可以添加密钥备注。
 -搜索密钥、密钥的部分、备注。
 
v1.0.1
 -软件界面的调整。
 -添加已封密钥数据库。


v1.0.0
 -PIDKey第一版正式发布。
