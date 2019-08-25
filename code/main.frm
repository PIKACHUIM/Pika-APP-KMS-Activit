VERSION 5.00
Begin VB.Form main 
   Caption         =   "KMS授权工具GUI-V3.2"
   ClientHeight    =   7710
   ClientLeft      =   10665
   ClientTop       =   4560
   ClientWidth     =   6495
   FillColor       =   &H0000C000&
   ForeColor       =   &H80000016&
   Icon            =   "main.frx":0000
   ScaleHeight     =   7710
   ScaleWidth      =   6495
   Begin VB.CommandButton Command3 
      Caption         =   "撤销激活"
      Height          =   1095
      Left            =   4920
      TabIndex        =   14
      Top             =   4920
      Width           =   1215
   End
   Begin VB.CommandButton Command2 
      Caption         =   "安装工具"
      Height          =   1095
      Left            =   3480
      TabIndex        =   13
      Top             =   4920
      Width           =   1215
   End
   Begin VB.CommandButton cls 
      Caption         =   "撤销激活"
      Height          =   1095
      Left            =   1680
      TabIndex        =   12
      Tag             =   "4"
      Top             =   6240
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "退出"
      Height          =   1095
      Left            =   4920
      TabIndex        =   11
      Top             =   6360
      Width           =   1300
   End
   Begin VB.Frame Frame2 
      Caption         =   "激活Office"
      Height          =   3735
      Left            =   3360
      TabIndex        =   8
      Top             =   2400
      Width           =   2895
      Begin VB.CommandButton off2 
         Caption         =   "第二步：应用激活"
         Height          =   975
         Left            =   120
         TabIndex        =   10
         Top             =   1440
         Width           =   2655
      End
      Begin VB.CommandButton off1 
         Caption         =   "第一步：版本转换"
         Height          =   975
         Left            =   120
         TabIndex        =   9
         Top             =   360
         Width           =   2655
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "激活Windows"
      Height          =   5175
      Left            =   120
      TabIndex        =   2
      Top             =   2400
      Width           =   2895
      Begin VB.CommandButton vol 
         Caption         =   "转换工具"
         Height          =   1095
         Left            =   120
         TabIndex        =   7
         Top             =   3840
         Width           =   1215
      End
      Begin VB.CommandButton bak 
         Caption         =   "备份许可"
         Height          =   1095
         Left            =   1560
         TabIndex        =   6
         Tag             =   "4"
         Top             =   2520
         Width           =   1215
      End
      Begin VB.CommandButton che 
         Caption         =   "查看状态"
         Height          =   1095
         Left            =   120
         TabIndex        =   5
         Top             =   2520
         Width           =   1215
      End
      Begin VB.CommandButton win2 
         Caption         =   "第二步：应用激活"
         Height          =   975
         Left            =   120
         TabIndex        =   4
         Top             =   1440
         Width           =   2655
      End
      Begin VB.CommandButton win1 
         Caption         =   "第一步：版本转换"
         Height          =   975
         Left            =   120
         TabIndex        =   3
         Top             =   360
         Width           =   2655
      End
   End
   Begin VB.TextBox Text1 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0FFC0&
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "微软雅黑"
         Size            =   9
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   2175
      Left            =   120
      MultiLine       =   -1  'True
      OLEDragMode     =   1  'Automatic
      TabIndex        =   1
      Text            =   "main.frx":288A
      Top             =   120
      Width           =   6255
   End
   Begin VB.CommandButton abo 
      Caption         =   "关于"
      Height          =   1095
      Left            =   3360
      TabIndex        =   0
      Top             =   6360
      Width           =   1300
   End
End
Attribute VB_Name = "main"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public Sub Delay(ByVal ParTime As Long)
Dim tim
tim = Timer
While Timer - tim < ParTime
DoEvents
Wend
End Sub
Private Sub cls_Click()
Dim i As Integer
i = MsgBox("确定撤销KMS激活Windows？" & vbCrLf & "如果没有激活密钥，请点击“否(N)”", vbYesNo)
If i = vbYes Then
    Shell "cmd.exe /c slmgr /upk &slmgr /ckms & slmgr /rearm"
    Delay 1
    MsgBox ("成功取消激活！")
Else
End If
End Sub

Private Sub Command1_Click()
Shell "cmd.exe /c tskill cm*"
Shell "cmd.exe /c taskkill /IM cm*"
Unload Me
End Sub

Private Sub Command2_Click()
Dim str95
str95 = App.Path
Shell "cmd.exe /c ois.exe"

End Sub

Private Sub Command3_Click()
Dim i As Integer
i = MsgBox("确定撤销KMS激活Office？" & vbCrLf & "如果没有激活密钥，请点击“否(N)”", vbYesNo)
If i = vbYes Then
    Shell "cmd.exe /c clo.exe"
    Delay 1
    MsgBox ("成功取消激活！")
Else
End If
End Sub

Private Sub off1_Click()
Dim i As Integer
  i = MsgBox("确认转换Office版本为VOL版？", vbYesNo)
  If i = vbYes Then
Dim str12
str12 = App.Path
Shell str12 & "\off.exe"
Dim str18
str18 = App.Path
Shell str18 & "\rtv.cmd"
Delay 3
MsgBox ("转换命令发送成功！ " & vbCrLf & "现在你可以点下一步激活Office了")
  Else
  End If

End Sub

Private Sub off2_Click()
Dim i As Integer
  i = MsgBox("激活所有Office？ " & vbCrLf & "如果你已有正版密钥或者已经激活，建议取消激活", vbYesNo)
  If i = vbYes Then
Shell "cmd.exe /c color 2f && cscript ""%ProgramFiles(x86)%\Microsoft Office\Office16\ospp.vbs"" /sethst:skms1.52pika.iego.net && cscript ""%ProgramFiles(x86)%\Microsoft Office\Office16\ospp.vbs"" /act && cscript ""%ProgramFiles(x86)%\Microsoft Office\Office16\ospp.vbs"" /dstatus"
Shell "cmd.exe /c color 2f && cscript ""%ProgramFiles(x86)%\Microsoft Office\Office15\ospp.vbs"" /sethst:skms1.52pika.iego.net && cscript ""%ProgramFiles(x86)%\Microsoft Office\Office15\ospp.vbs"" /act && cscript ""%ProgramFiles(x86)%\Microsoft Office\Office15\ospp.vbs"" /dstatus"
Shell "cmd.exe /c color 2f && cscript ""%ProgramFiles(x86)%\Microsoft Office\Office14\ospp.vbs"" /sethst:skms1.52pika.iego.net && cscript ""%ProgramFiles(x86)%\Microsoft Office\Office14\ospp.vbs"" /act && cscript ""%ProgramFiles(x86)%\Microsoft Office\Office14\ospp.vbs"" /dstatus"
Shell "cmd.exe /c color 2f && cscript ""%ProgramFiles(x86)%\Microsoft Office\Office16\ospp.vbs"" /sethst:skms2.52pika.iego.net && cscript ""%ProgramFiles(x86)%\Microsoft Office\Office16\ospp.vbs"" /act && cscript ""%ProgramFiles(x86)%\Microsoft Office\Office16\ospp.vbs"" /dstatus"
Shell "cmd.exe /c color 2f && cscript ""%ProgramFiles(x86)%\Microsoft Office\Office15\ospp.vbs"" /sethst:skms2.52pika.iego.net && cscript ""%ProgramFiles(x86)%\Microsoft Office\Office15\ospp.vbs"" /act && cscript ""%ProgramFiles(x86)%\Microsoft Office\Office15\ospp.vbs"" /dstatus"
Shell "cmd.exe /c color 2f && cscript ""%ProgramFiles(x86)%\Microsoft Office\Office14\ospp.vbs"" /sethst:skms2.52pika.iego.net && cscript ""%ProgramFiles(x86)%\Microsoft Office\Office14\ospp.vbs"" /act && cscript ""%ProgramFiles(x86)%\Microsoft Office\Office14\ospp.vbs"" /dstatus"
Shell "cmd.exe /c color 2f && cscript ""%ProgramFiles(x86)%\Microsoft Office\Office16\ospp.vbs"" /sethst:skms3.52pika.iego.net && cscript ""%ProgramFiles(x86)%\Microsoft Office\Office16\ospp.vbs"" /act && cscript ""%ProgramFiles(x86)%\Microsoft Office\Office16\ospp.vbs"" /dstatus"
Shell "cmd.exe /c color 2f && cscript ""%ProgramFiles(x86)%\Microsoft Office\Office15\ospp.vbs"" /sethst:skms3.52pika.iego.net && cscript ""%ProgramFiles(x86)%\Microsoft Office\Office15\ospp.vbs"" /act && cscript ""%ProgramFiles(x86)%\Microsoft Office\Office15\ospp.vbs"" /dstatus"
Shell "cmd.exe /c color 2f && cscript ""%ProgramFiles(x86)%\Microsoft Office\Office14\ospp.vbs"" /sethst:skms3.52pika.iego.net && cscript ""%ProgramFiles(x86)%\Microsoft Office\Office14\ospp.vbs"" /act && cscript ""%ProgramFiles(x86)%\Microsoft Office\Office14\ospp.vbs"" /dstatus"
Shell "cmd.exe /c color 2f && cscript ""%ProgramFiles%\Microsoft Office\Office16\ospp.vbs"" /sethst:skms1.52pika.iego.net && cscript ""%ProgramFiles%\Microsoft Office\Office16\ospp.vbs"" /act && cscript ""%ProgramFiles%\Microsoft Office\Office16\ospp.vbs"" /dstatus"
Shell "cmd.exe /c color 2f && cscript ""%ProgramFiles%\Microsoft Office\Office15\ospp.vbs"" /sethst:skms1.52pika.iego.net && cscript ""%ProgramFiles%\Microsoft Office\Office15\ospp.vbs"" /act && cscript ""%ProgramFiles%\Microsoft Office\Office15\ospp.vbs"" /dstatus"
Shell "cmd.exe /c color 2f && cscript ""%ProgramFiles%\Microsoft Office\Office14\ospp.vbs"" /sethst:skms1.52pika.iego.net && cscript ""%ProgramFiles%\Microsoft Office\Office14\ospp.vbs"" /act && cscript ""%ProgramFiles%\Microsoft Office\Office14\ospp.vbs"" /dstatus"
Shell "cmd.exe /c color 2f && cscript ""%ProgramFiles%\Microsoft Office\Office16\ospp.vbs"" /sethst:skms2.52pika.iego.net && cscript ""%ProgramFiles%\Microsoft Office\Office16\ospp.vbs"" /act && cscript ""%ProgramFiles%\Microsoft Office\Office16\ospp.vbs"" /dstatus"
Shell "cmd.exe /c color 2f && cscript ""%ProgramFiles%\Microsoft Office\Office15\ospp.vbs"" /sethst:skms2.52pika.iego.net && cscript ""%ProgramFiles%\Microsoft Office\Office15\ospp.vbs"" /act && cscript ""%ProgramFiles%\Microsoft Office\Office15\ospp.vbs"" /dstatus"
Shell "cmd.exe /c color 2f && cscript ""%ProgramFiles%\Microsoft Office\Office14\ospp.vbs"" /sethst:skms2.52pika.iego.net && cscript ""%ProgramFiles%\Microsoft Office\Office14\ospp.vbs"" /act && cscript ""%ProgramFiles%\Microsoft Office\Office14\ospp.vbs"" /dstatus"
Shell "cmd.exe /c color 2f && cscript ""%ProgramFiles%\Microsoft Office\Office16\ospp.vbs"" /sethst:skms3.52pika.iego.net && cscript ""%ProgramFiles%\Microsoft Office\Office16\ospp.vbs"" /act && cscript ""%ProgramFiles%\Microsoft Office\Office16\ospp.vbs"" /dstatus"
Shell "cmd.exe /c color 2f && cscript ""%ProgramFiles%\Microsoft Office\Office15\ospp.vbs"" /sethst:skms3.52pika.iego.net && cscript ""%ProgramFiles%\Microsoft Office\Office15\ospp.vbs"" /act && cscript ""%ProgramFiles%\Microsoft Office\Office15\ospp.vbs"" /dstatus"
Shell "cmd.exe /c color 2f && cscript ""%ProgramFiles%\Microsoft Office\Office14\ospp.vbs"" /sethst:skms3.52pika.iego.net && cscript ""%ProgramFiles%\Microsoft Office\Office14\ospp.vbs"" /act && cscript ""%ProgramFiles%\Microsoft Office\Office14\ospp.vbs"" /dstatus"
Delay 5
MsgBox ("已经发送授权许可给已安装Office，请再等待3~5分钟" & vbCrLf & "如果还是没激活请确保Office安装在C盘默认目录")
Delay 2
Shell "cmd.exe /k mode con cols=60 lines=20 &echo 激活状态，显示---LICENSED---即为激活。&  color 2f & cscript ""%ProgramFiles(x86)%\Microsoft Office\Office16\ospp.vbs"" /dstatus"
  Else
  End If
End Sub

Private Sub win1_Click()
MsgBox ("**************欢迎使用版本转换软件**************" & vbCrLf & "【使用方法】请对应选择【家庭版】或者【专业版】" & vbCrLf & "再选择【Business-VOL版】【内置证书】然后激活")
Dim str
str = App.Path
Shell str & "\vtt.exe"
End Sub
Private Sub win2_Click()
Dim i As Integer
  i = MsgBox("确定激活此Windows？请确认原有许可已经备份" & vbCrLf & "如果要备份当前许可，请点击“否(N)”然后点击""备份许可""", vbYesNo)
  If i = vbYes Then
    Shell "cmd.exe /c wscript /nologo /B C:\\WINDOWS\\system32\\slmgr.vbs /skms skms1.52pika.iego.net"
    Delay 1
    Shell "cmd.exe /c wscript /nologo /B C:\\WINDOWS\\system32\\slmgr.vbs /ato"
    Delay 1
    Shell "cmd.exe /c wscript /nologo /B C:\\WINDOWS\\system32\\slmgr.vbs /skms skms2.52pika.iego.net"
    Delay 1
    Shell "cmd.exe /c wscript /nologo /B C:\\WINDOWS\\system32\\slmgr.vbs /ato"
    Delay 1
    Shell "cmd.exe /c wscript /nologo /B C:\\WINDOWS\\system32\\slmgr.vbs /skms skms3.52pika.iego.net"
    Delay 1
    Shell "cmd.exe /c wscript /nologo /B C:\\WINDOWS\\system32\\slmgr.vbs /ato"
    Delay 1
    Shell "cmd.exe /c slmgr /dli"
    Delay 3
    Shell "cmd.exe /c slmgr /xpr"
  Else
  End If
End Sub
Private Sub vol_Click()
Dim str
str = App.Path
Shell str & "\vtt.exe"
End Sub
Private Sub abo_Click()
MsgBox "                                    KMS激活工具V3.2" & vbCrLf & "---------------------------------------------------------------" & vbCrLf & "@2019 PIKACHU KMS许可授权工具 四川大学计算机学院皮卡丘" & vbCrLf & "欢迎联系皮卡丘 PIKACHUIM@QQ.COM"
End Sub
Private Sub bak_Click()
Dim str
str = App.Path
Shell str & "\bak.exe"
End Sub
Private Sub che_Click()
Shell "cmd.exe /c slmgr /dlv"
Delay 2
Shell "cmd.exe /c slmgr /xpr"
End Sub
Private Sub Form_Unload(Cancel As Integer)
End
End Sub

