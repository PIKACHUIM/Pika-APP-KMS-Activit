
                            PIDKey Portable от Ratiborus,
                                       MSFree Inc.

       		                        簡介:
                          ————————————————————————————— 
————
此程式用來查看有關MS產品金鑰的資訊並將其保存到一個檔中。簡單說就是代替VAMT KEY管理 
部分功能的一個小工具！

       		                       軟體使用教程:
                          ————————————————————————————— 
————
1、按兩下PIDKey.exe即可啟動。
2、支持一次性從剪貼板添加單個或多個key，複製key後在key文字方塊處按一下滑鼠即自動讀取剪貼 
板中的key，再點擊GO!就開始校驗、添加。
3、校驗金鑰時會嘗試所有的金鑰校驗檔，從列表中的第一個開始，知道找到正確的金鑰資訊。
4、軟體中存在一些常見的金鑰校驗檔，你也可以自訂自己的金鑰校驗檔。如果你把你的密 
鑰校驗檔放到本程式資料夾中，該檔將被保存在一個相對路徑中，不夠改程式放到哪兒都可 
以調用它。
5、如果選擇了自訂金鑰校驗檔，刪除按鈕將被啟動。
6、可從檔中檢查金鑰資訊，可以從任何文本格式的檔中正確讀取金鑰並添加，即使檔中包 
含無關信息。
7、在啟動備份檔案夾中，Activation_Restore.cmd文件被創建。使用它你可以隨時恢復啟動，甚 
至無需使用PIDKEY程式。
                          ————————————————————————————— 
————
                                                                Ratiborus


更新日誌:
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

v2.0.9 build 1006
 -Changes in the "Service Keys Database" function.

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
 -You can run multiple instances/copies of the program, but be careful if you are running a copy
  from the same folder, the latest running instance/copy of the program overwrites keys when 
  closing it!!!

PS: In the 1001 test assembly key database is stored in the program folder, and if the length 
  of the path to the database exceeded 259 characters, then the entire database is not displayed,
  the keys are lost. In build 1002 the keys database is unpacked again, in C:\Windows\Temp.


v2.0.9 build 1000 
 -Optimized some functions to accelerate the program. 
 -Small interface changes.

v2.0.8 build 1001
 -On Windows 10 Technical Preview OSPP is not properly determined, Office 14 keys are
  not set.

v2.0.8 build 1000
 -程式含有多種語言，增加更改介面語言功能。
 -增加產品許可證狀態 Product.LicenseStatusReason,
  如果參數不等於零(錯誤0x4004F040).

v2.0.7 build 2120
 -優化從剪切板輸入金鑰的函數。
 -當CSVLK金鑰被安裝在主機或KMS主機的Office14/15上時，顯示有關KMS服務的完整資訊。
  
v2.0.7 build 2119
 -修正了在Windows 7中不顯示許可狀態。
 
v2.0.7 build 2117
 -修正了改變產品金鑰管道後，不能被啟動。
 -修正了保存金鑰資料庫時的錯誤。
 -提高軟體運行速度。
 
v2.0.7 build 2116
 -其他細節問題修復。

v2.0.7 build 2114
 -重寫的設置金鑰和啟動函數。 
 -改進了金鑰排序。 
 -增加了安裝金鑰和啟動介面。
 -新增備份和還原啟動資訊功能。 
  注意：還原啟動資訊功能不一定任何時候都有效！
 -增加“電話啟動”選項。
 -增加“許可證資訊”選項。

v2.0.7 build 2000 Final (安裝計畫我做完了一切我想做的事情 ;) )
 -修正了少量錯誤。
 -添加金鑰時，如果金鑰被封會顯示消息。
 -在清單試圖中顯示每組中金鑰的數量。
 -右鍵菜單增加“將所選金鑰移動到已封金鑰資料庫”
 -從任意資料夾恢復金鑰資料庫。
 -增加刪除選定的金鑰功能。
 
v2.0.6.1
 -修正了複製所選金鑰到一個文字檔的錯誤。
 
v2.0.6
 -增加按許可證管道(CSVLK, GVLK, OEM, MAK, RETAIL)隱藏金鑰功能。 
 -增加把已封金鑰保存到一個文本文檔的功能。
 -在В Settings.ini檔中增加永久保存資料庫參數。"SaveBasePermanently=False/True" 
  False - 當退出程式時保存資料庫。;
  True - 添加每一個金鑰時保存一次。
  
v2.0.5
 -修復了沒有網路連接時更新啟動次數的出現錯誤。
 -增加保存和還原金鑰功能。
 -修正了少量錯誤。
 
v2.0.4
 -修正了一些錯誤。 
 -增加撤銷和重做按鈕。
 -增加密碼保護金鑰資料庫功能。 
 -增加滑鼠旋停在金鑰上，會出現一個提示框功能。
 -初始金鑰存儲在一個加密檔中，KEYS資料夾不再需要。
 -當你處理*.key和*.cilx格式的金鑰檔時，會添加到資料庫中。
 -修復了一些檔列表分類方面的bug

v2.0.3
 -優化金鑰查找函數。
 -當你查找.cilx格式的金鑰時，該金鑰的備註會自動被複製出來。
 -將金鑰進行分類。
 -修正了許多錯誤，但並不是所有的都被修正了。

v2.0.2
 -軟體介面的調整。 PID Checker windows combinded with base keys.

v2.0.1
 -軟體介面的調整。
 
v1.0.5.1
 -提高軟體運行速度。
 -軟體介面的調整。
 
v1.0.4
 -新增查看和編輯金鑰的功能。
 
v1.0.3
 -輸入金鑰，可以從任何文本格式的檔中正確讀取金鑰。
 -增加了金鑰排序功能。
 -可以添加金鑰備註。
 -搜索金鑰、金鑰的部分、備註。
 
v1.0.1
 -軟體介面的調整。
 -添加已封金鑰資料庫。


v1.0.0
 -PIDKey第一版正式發佈。
