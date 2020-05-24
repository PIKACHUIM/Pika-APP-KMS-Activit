VERSION 5.00
Begin VB.Form main 
   Caption         =   "皮卡丘软件许可授权工具"
   ClientHeight    =   10215
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   6960
   FillColor       =   &H0000C000&
   ForeColor       =   &H80000016&
   Icon            =   "main.frx":0000
   ScaleHeight     =   10215
   ScaleMode       =   0  'User
   ScaleWidth      =   7000
   Begin VB.Frame Frame7 
      Caption         =   "第三方工具（未知安全性）"
      Height          =   1215
      Left            =   4320
      TabIndex        =   24
      Top             =   7440
      Width           =   2535
      Begin VB.CommandButton exts_kmsa 
         Caption         =   "KMS Pico Service"
         Height          =   615
         Left            =   240
         TabIndex        =   25
         Top             =   360
         Width           =   2080
      End
   End
   Begin VB.Frame Frame6 
      Caption         =   "Office 管理工具"
      Height          =   2100
      Left            =   4320
      TabIndex        =   19
      Top             =   5250
      Width           =   2535
      Begin VB.CommandButton offc_inst 
         Caption         =   "Office Installer"
         Height          =   600
         Left            =   1320
         TabIndex        =   23
         Top             =   1200
         Width           =   1000
      End
      Begin VB.CommandButton offc_tool 
         Caption         =   "Office ToolPlus"
         Height          =   600
         Left            =   240
         TabIndex        =   22
         Tag             =   "4"
         Top             =   1200
         Width           =   1000
      End
      Begin VB.CommandButton offc_ocls 
         Caption         =   "撤销激活"
         Height          =   600
         Left            =   240
         TabIndex        =   21
         Top             =   360
         Width           =   1000
      End
      Begin VB.CommandButton offc_info 
         Caption         =   "查看状态"
         Height          =   600
         Left            =   1320
         TabIndex        =   20
         Tag             =   "4"
         Top             =   360
         Width           =   1000
      End
   End
   Begin VB.Frame Frame5 
      Caption         =   "激活Windows（通用，KMS激活适用于VOL版本）"
      Height          =   1200
      Left            =   120
      TabIndex        =   18
      Top             =   7440
      Width           =   4095
      Begin VB.CommandButton wink_kms2 
         Caption         =   "第二步：应用激活"
         Height          =   700
         Left            =   2200
         TabIndex        =   28
         Top             =   360
         Width           =   1600
      End
      Begin VB.CommandButton wink_kms1 
         Caption         =   "第一步：版本转换"
         Height          =   700
         Left            =   300
         TabIndex        =   27
         Top             =   360
         Width           =   1600
      End
   End
   Begin VB.Frame Frame3 
      Caption         =   "离线KMS工具（通用，一般无网络或失败才用）"
      Height          =   1200
      Left            =   120
      TabIndex        =   17
      Top             =   8760
      Width           =   4095
      Begin VB.CommandButton offs_alls 
         Caption         =   "一键离线激活Windows和Office"
         Height          =   700
         Left            =   300
         TabIndex        =   29
         Top             =   300
         Width           =   3495
      End
   End
   Begin VB.Frame Frame4 
      Caption         =   "Windows管理工具"
      Height          =   2175
      Left            =   4320
      TabIndex        =   9
      Top             =   3000
      Width           =   2535
      Begin VB.CommandButton winc_back 
         Caption         =   "备份许可"
         Height          =   600
         Left            =   240
         TabIndex        =   13
         Tag             =   "4"
         Top             =   360
         Width           =   1000
      End
      Begin VB.CommandButton winc_tran 
         Caption         =   "转换工具"
         Height          =   600
         Left            =   1320
         TabIndex        =   12
         Top             =   360
         Width           =   1000
      End
      Begin VB.CommandButton winc_wcls 
         Caption         =   "撤销激活"
         Height          =   600
         Left            =   240
         TabIndex        =   11
         Tag             =   "4"
         Top             =   1200
         Width           =   1000
      End
      Begin VB.CommandButton winc_info 
         Caption         =   "查看状态"
         Height          =   600
         Left            =   1320
         TabIndex        =   10
         Top             =   1200
         Width           =   1000
      End
   End
   Begin VB.CommandButton main_exit 
      Caption         =   "退出"
      Height          =   1000
      Left            =   5760
      TabIndex        =   8
      Top             =   8880
      Width           =   1044
   End
   Begin VB.Frame Frame2 
      Caption         =   "激活Office（通用KMS,支持2010-2019所有版本）"
      Height          =   2100
      Left            =   120
      TabIndex        =   5
      Top             =   5250
      Width           =   4100
      Begin VB.CommandButton offs_kms4 
         Caption         =   "PID Key密钥管理"
         Height          =   700
         Left            =   2200
         TabIndex        =   26
         Top             =   1200
         Width           =   1600
      End
      Begin VB.CommandButton offs_kms3 
         Caption         =   "激活Visio 16/19"
         Height          =   700
         Left            =   300
         TabIndex        =   16
         Top             =   1200
         Width           =   1600
      End
      Begin VB.CommandButton offs_kms2 
         Caption         =   "第二步：应用激活"
         Height          =   700
         Left            =   2200
         TabIndex        =   7
         Top             =   360
         Width           =   1600
      End
      Begin VB.CommandButton offs_kms1 
         Caption         =   "第一步：版本转换"
         Height          =   700
         Left            =   300
         TabIndex        =   6
         Top             =   360
         Width           =   1600
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "激活Win10专用（HWID数字权利，推荐使用这个）"
      Height          =   2200
      Left            =   120
      TabIndex        =   2
      Top             =   3000
      Width           =   4100
      Begin VB.CommandButton wins_hws4 
         Caption         =   "第三方激活工具"
         Height          =   700
         Left            =   2200
         TabIndex        =   15
         Top             =   1200
         Width           =   1600
      End
      Begin VB.CommandButton wins_hws3 
         Caption         =   "老版本激活脚本"
         Height          =   700
         Left            =   300
         TabIndex        =   14
         Top             =   1200
         Width           =   1600
      End
      Begin VB.CommandButton wins_hws2 
         Caption         =   "第二步：应用激活"
         Height          =   700
         Left            =   2200
         TabIndex        =   4
         Top             =   360
         Width           =   1600
      End
      Begin VB.CommandButton wins_hws1 
         Caption         =   "第一步：版本转换"
         Height          =   700
         Left            =   300
         TabIndex        =   3
         Top             =   360
         Width           =   1600
      End
   End
   Begin VB.TextBox Text1 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0FFC0&
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   2775
      Left            =   120
      MultiLine       =   -1  'True
      OLEDragMode     =   1  'Automatic
      TabIndex        =   1
      Text            =   "main.frx":1084A
      Top             =   120
      Width           =   6735
   End
   Begin VB.CommandButton main_info 
      Caption         =   "关于"
      Height          =   1000
      Left            =   4440
      TabIndex        =   0
      Top             =   8880
      Width           =   1044
   End
End
Attribute VB_Name = "main"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Rem 延时函数
Public Sub Delay(ByVal ParTime As Long)
Dim tim
tim = Timer
While Timer - tim < ParTime
DoEvents
Wend
End Sub

Private Sub Command10_Click()

End Sub

Rem 关于按钮
Private Sub main_info_Click()
MsgBox "                                   皮卡丘软件许可授权工具" & vbCrLf & "                       Pikachu Software Authorization Tools" & vbCrLf & "-----------------------------------------------------------------" & vbCrLf & "    Copyright 2015-2020 Pikachuim GPL3.0 All Rights Reserved"
End Sub
Rem 退出按钮
Private Sub main_exit_Click()
Shell "cmd.exe /c tskill cm*"
Shell "cmd.exe /c taskkill /IM cm*"
Unload Me
End Sub



Private Sub offc_inst_Click()
    Dim str
    str = App.Path
    Shell str & "\off-kms\off_atools.exe"
End Sub

Private Sub offc_ocls_Click()
Dim i As Integer
i = MsgBox("确定撤销激活Office？ " & vbCrLf & "如果没有激活密钥，请点击“否(N)”", vbYesNo)
If i = vbYes Then
    Dim str
    str = App.Path
    Shell str & "\off-kms\off_cleans.exe"
    MsgBox ("成功取消激活！")
Else
End If

End Sub
Private Sub offc_info_Click()
    Dim str
    str = App.Path
    Shell str & "\off-kms\off_status.cmd"
End Sub

Private Sub offc_tool_Click()
    Dim str
    str = App.Path
    Shell str & "\off-kms\Office Tool Plus.exe"
End Sub

Private Sub wins_hws1_Click()
    MsgBox ("**************欢迎使用版本转换软件**************" & vbCrLf & "【使用方法】请对应选择【家庭版】或者【专业版】" & vbCrLf & "再选择【Business-VOL版】【内置证书】然后激活")
    Dim str
    str = App.Path
    Shell str & "\win-hws\win_to_vol.exe"
End Sub
Private Sub wins_hws2_Click()
    Dim i As Integer
      i = MsgBox("确定通过HWID激活此Windows？请确认原有许可已经备份" & vbCrLf & "如要备份当前许可，请点击【否(N)】然后点击【备份许可】", vbYesNo)
      If i = vbYes Then
        Dim str
        str = App.Path
        Shell "C:\Windows\explorer.exe " & str & "\win-hws\win_hwid_1.cmd"
      Else
      End If
End Sub
Private Sub wins_hws3_Click()
    Dim i As Integer
      i = MsgBox("确定通过HWID激活此Windows？请确认原有许可已经备份" & vbCrLf & "如要备份当前许可，请点击【否(N)】然后点击【备份许可】", vbYesNo)
      If i = vbYes Then
        Dim str
        str = App.Path
        Shell "C:\Windows\explorer.exe " & str & "\win-hws\win_hwid_2.cmd"
      Else
      End If
End Sub
Private Sub wins_hws4_Click()
    Dim str
    str = App.Path
    Shell str & "\win-hws\win_hwid_3.exe"
End Sub

Private Sub winc_back_Click()
    Dim str
    str = App.Path
    Shell str & "\win-box\win_to_bak.exe"
End Sub
Private Sub winc_tran_Click()
    MsgBox ("**************欢迎使用版本转换软件**************" & vbCrLf & "【使用方法】请对应选择【家庭版】或者【专业版】" & vbCrLf & "再选择【Business-VOL版】【内置证书】然后激活")
    Dim str
    str = App.Path
    Shell str & "\win-hws\win_to_vol.exe"
End Sub
Private Sub winc_wcls_Click()
Dim i As Integer
i = MsgBox("确定撤销激活Windows？" & vbCrLf & "如果没有激活密钥，请点击“否(N)”", vbYesNo)
If i = vbYes Then
    Shell "cmd.exe /c slmgr /upk &slmgr /ckms & slmgr /rearm"
    Delay 1
    MsgBox ("成功取消激活！")
Else
End If
End Sub
Private Sub winc_info_Click()
Shell "cmd.exe /c slmgr /dlv"
Delay 2
Shell "cmd.exe /c slmgr /xpr"
End Sub
Private Sub wink_kms1_Click()
Dim i As Integer
i = MsgBox("当前系统是Win10吗？", vbYesNo)
If i = vbYes Then
    MsgBox ("**************欢迎使用版本转换软件**************" & vbCrLf & "【使用方法】请对应选择【家庭版】或者【专业版】" & vbCrLf & "再选择【Business-VOL版】【内置证书】然后激活")
    Dim str
    str = App.Path
    Shell str & "\win-hws\win_to_vol.exe"
Else
    MsgBox ("点击【确定】打开帮助网站 请仔细阅读并按照网站内的教程完成版本转换" & vbCrLf & "如果你不知道怎么操作 请在这个网站找到对应密钥 然后【右键开始菜单】" & vbCrLf & "然后选择【Windows PowerShell（管理员）】，并在弹出的窗口中输入：" & vbCrLf & "-----------------------------------------------------------------------" & vbCrLf & "                                        slmgr /ipk 你复制的密钥" & vbCrLf & "-----------------------------------------------------------------------")
    Shell "explorer.exe https://docs.microsoft.com/zh-cn/windows-server/get-started/kmsclientkeys"
End If
End Sub
Private Sub wink_kms2_Click()
Dim i As Integer
  i = MsgBox("确定激活此Windows？请确认原有许可已经备份" & vbCrLf & "如果要备份当前许可，请点击“否(N)”然后点击【备份许可】", vbYesNo)
  If i = vbYes Then
    Dim str
    str = App.Path
    Shell str & "\win-kms\win_to_kms.cmd"
    Shell "cmd.exe /c wscript /nologo /B C:\\WINDOWS\\system32\\slmgr.vbs /skms kms1.52pika.cf"
    Delay 1
    Shell "cmd.exe /c wscript /nologo /B C:\\WINDOWS\\system32\\slmgr.vbs /ato"
    Delay 1
    Shell "cmd.exe /c wscript /nologo /B C:\\WINDOWS\\system32\\slmgr.vbs /skms kms2.52pika.cf"
    Delay 1
    Shell "cmd.exe /c wscript /nologo /B C:\\WINDOWS\\system32\\slmgr.vbs /ato"
    Delay 1
    Shell "cmd.exe /c wscript /nologo /B C:\\WINDOWS\\system32\\slmgr.vbs /skms kms3.52pika.cf"
    Delay 1
    Shell "cmd.exe /c wscript /nologo /B C:\\WINDOWS\\system32\\slmgr.vbs /ato"
    Delay 1
    Shell "cmd.exe /c wscript /nologo /B C:\\WINDOWS\\system32\\slmgr.vbs /skms kms4.52pika.cf"
    Delay 1
    Shell "cmd.exe /c wscript /nologo /B C:\\WINDOWS\\system32\\slmgr.vbs /ato"
    Delay 1
    Shell "cmd.exe /c wscript /nologo /B C:\\WINDOWS\\system32\\slmgr.vbs /skms kms5.52pika.cf"
    Delay 1
    Shell "cmd.exe /c wscript /nologo /B C:\\WINDOWS\\system32\\slmgr.vbs /ato"
    Delay 1
    Shell "cmd.exe /c wscript /nologo /B C:\\WINDOWS\\system32\\slmgr.vbs /skms kms6.52pika.cf"
    Delay 1
    Shell "cmd.exe /c wscript /nologo /B C:\\WINDOWS\\system32\\slmgr.vbs /ato"
    Delay 1
    Shell "cmd.exe /c wscript /nologo /B C:\\WINDOWS\\system32\\slmgr.vbs /skms kms7.52pika.cf"
    Delay 1
    Shell "cmd.exe /c wscript /nologo /B C:\\WINDOWS\\system32\\slmgr.vbs /ato"
    Delay 1
    Shell "cmd.exe /c wscript /nologo /B C:\\WINDOWS\\system32\\slmgr.vbs /skms kms8.52pika.cf"
    Delay 1
    Shell "cmd.exe /c wscript /nologo /B C:\\WINDOWS\\system32\\slmgr.vbs /ato"
    Delay 1
    Shell "cmd.exe /c wscript /nologo /B C:\\WINDOWS\\system32\\slmgr.vbs /skms kms9.52pika.cf"
    Delay 1
    Shell "cmd.exe /c wscript /nologo /B C:\\WINDOWS\\system32\\slmgr.vbs /ato"
    Delay 1
    Shell "cmd.exe /c slmgr /dli"
    Delay 3
    Shell "cmd.exe /c slmgr /xpr"
  Else
  End If
End Sub
Private Sub offs_alls_Click()
Dim str
    str = App.Path
    Shell str & "\offline\off_to_kms.cmd"
End Sub
Private Sub exts_kmsa_Click()
    Dim str
    str = App.Path
    Shell str & "\ext-all\ext_to_kms.exe"
End Sub
Private Sub offs_kms1_Click()
Dim i As Integer
  i = MsgBox("确认转换Office版本为VOL版？", vbYesNo)
  If i = vbYes Then
Dim str
str = App.Path
Shell str & "\off-kms\off_tran16.cmd"
Shell str & "\off-kms\off_tranal.cmd"
Delay 3
MsgBox ("转换命令发送成功！ " & vbCrLf & "现在你可以点下一步激活Office了")
  Else
  End If
End Sub
Private Sub offs_kms2_Click()
Dim i As Integer
  i = MsgBox("激活所有Office？ " & vbCrLf & "如果你已有正版密钥或者已经激活，建议取消激活", vbYesNo)
  If i = vbYes Then
    Dim str
    str = App.Path
    Shell str & "\off-kms\off_acts16.cmd"
    Shell str & "\off-kms\off_actsal.cmd"
    Delay 5
    MsgBox ("已经发送授权许可给已安装Office，请再等待3~5分钟" & vbCrLf & "如果还是没激活请确保Office安装在C盘默认目录")
    Delay 2
    Shell "cmd.exe /k mode con cols=60 lines=20 &echo 激活状态，显示---LICENSED---即为激活。&  color 2f & cscript ""%ProgramFiles(x86)%\Microsoft Office\Office16\ospp.vbs"" /dstatus"
  Else
  End If
End Sub
Private Sub offs_kms3_Click()
    Dim str
    str = App.Path
    Shell str & "\off-kms\vis_to_act.cmd"
End Sub
Private Sub offs_kms4_Click()
    Dim str
    str = App.Path
    Shell str & "\PID-Key\pid_to_key.exe"
End Sub

