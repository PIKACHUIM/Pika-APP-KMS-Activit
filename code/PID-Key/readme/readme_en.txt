
                            PIDKey Portable от Ratiborus,
                                       MSFree Inc.

       		                        Description:
                          —————————————————————————————————
This program was made to view, update and store information about Microsoft product keys 
into a log file. In many cases, it allows you to replace the VAMT.

       		                       Program Usage:
                          —————————————————————————————————
Run PIDKey.exe, select the desired configuration, insert the key into the input field
then click GO! You can insert one or more keys by copying them into the clipboard and
by clicking the mouse on the field for entering the key. Identifying the key configuration
will be checked against all configurations, starting at the beginning of the list until
correct data is retrieved.
The program has several built-in configurations, but also you can create 
your custom configuration. If you put your config file in the program folder, 
the file will be saved in a relative path and the program can work with it 
from any location folder with the program.
When you select a custom configuration a button becomes available to remove it. 
You can check the key from a file. You can use any file in text format containing
a key mixed with any number of other keys so they will be correctly extracted.
In the folder with the stored activation, the Activation_Restore.cmd file is created. With it, 
you can always restore the activation without even having to have PIDKey program.

                          —————————————————————————————————
                                                                Ratiborus


Changelog:
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
-On Windows 10 OSSP does not identify keys correctly.
-Fixed: Message saying Office 15 keys not installed.

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

v2.0.8 build 1002
 -Added "Remove all blocked keys from database" (Alt + press the button).
 
v2.0.8 build 1001
 -On Windows 10 Technical Preview OSPP is not properly determined, Office 14 keys are
  not set.

v2.0.8 build 1000
 -The program now is multi-lingual, added the ability to change the interface language.
 -Added displaying Product.LicenseStatusReason on license products status, 
  if the parameter is not equal to zero (error 0x4004F040).
  
v2.0.7 build 2120
 -Optimized input function of the keys from the clipboard.
 -Displays complete information about the KMS-Service when a CSVLK key is installed
  on the host or KMS Host for Office 14/15.
  
v2.0.7 build 2119
 -Fixed bug on Windows 7, do not display the license status.
 
v2.0.7 build 2117
 -Fixed an issue where after changing ProductKeyChannel product cannot be activated.
 -Fixed a bug when saving the key database.
 -Increased execution speed.
 
v2.0.7 build 2116
 -Fixed some minor bugs.

v2.0.7 build 2114
 -Fully rewritten setting keys and activation functions. 
 -Improved sorting keys. 
 -Added an interface to set the key and activate. 
 -Added ability to save and restore activation. 
  Be careful, restoration of activation does not always work. 
 -Added button "Activate by phone". 
 -Added button "License Information".

v2.0.7 build 2000 Final (I did everything I wanted to do, all that is planned. ;) )
 -Fixed some minor bugs.
 -When adding a key, a message is displayed if the key is blocked.
 -Displayed the number of keys in groups ListView.
 -Added in the context menu "Move the selected keys to blocked".
 -Restoring Key Databases funtion now works from any folder.
 -Added the ability to delete selected keys.
 
v2.0.6.1
 -Fixed a bug that did not properly copy selected keys to a text file.
 
v2.0.6
 -Added the ability to hide keys by licensing channel (CSVLK, GVLK, OEM, MAK, RETAIL).
 -Added the ability to save blocked keys in a text file.
 -Added parameter "SaveBasePermanently=False/True" in В Settings.ini.
  False - keybase stored only when the program exits;
  True - keybase persists after adding each key.
  
v2.0.5
 -If there is no Internet connection when determining Activation Count 
  an error occurred. Fixed.
 -Added ability to save and restore the keys.
 -Fixed minor bugs.
 
v2.0.4
 -Fixed some bugs. 
 -Added buttons for Undo and Redo. 
 -Added ability to password protect the base of keys. 
 -Added a tooltip when you hover the mouse over a key. 
 -Base-keys stored in a password-protected file. Folder KEYS 
   no longer needed. 
 -When processing files with keys *.key and *.cilx added to the database 
   comments to the keys of the files. 
 -Fixed some bugs with sorting through the fields list.

v2.0.3
 -Changes in the search key function.
 -When processing .cilx files comments are copied to the key.
 -Works sorting keys.
 -Eliminated a lot of mistakes. But certainly not all. :)

v2.0.2
 -Changes in the program interface. PID Checker windows combinded with base keys.

v2.0.1
 -Changes in the program interface.
 
v1.0.5.1
 -Increased speed of the program.
 -Changes in the program interface.
 
v1.0.4
 -Added ability to view and edit files with keys.
 
v1.0.3
 -Field to enter key, you can insert a few keys. With any additional text.
 -Added sorting keys file.
 -Can add comments to the keys.
 -Search for the key, part of the key and comment.
 
v1.0.1
 -Changes in the program interface.
 -Added blocked keys to database.


v1.0.0
 -First version of the program.
