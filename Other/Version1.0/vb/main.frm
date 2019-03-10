VERSION 5.00
Begin VB.Form main 
   Caption         =   "皮卡丘KMS批量许可授权工具V2.0"
   ClientHeight    =   7530
   ClientLeft      =   10665
   ClientTop       =   4560
   ClientWidth     =   6555
   FillColor       =   &H0000C000&
   ForeColor       =   &H80000016&
   Icon            =   "main.frx":0000
   ScaleHeight     =   7530
   ScaleWidth      =   6555
   Begin VB.CommandButton vol 
      Caption         =   "版本转换"
      Height          =   1095
      Left            =   4920
      TabIndex        =   7
      Top             =   4920
      Width           =   1215
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
      Height          =   3255
      Left            =   120
      MultiLine       =   -1  'True
      OLEDragMode     =   1  'Automatic
      TabIndex        =   6
      Text            =   "main.frx":4C842
      Top             =   120
      Width           =   6255
   End
   Begin VB.CommandButton exit 
      Caption         =   "退出程序"
      Height          =   1095
      Left            =   360
      TabIndex        =   5
      Top             =   6120
      Width           =   5775
   End
   Begin VB.CommandButton abo 
      Caption         =   "关于软件"
      Height          =   1095
      Left            =   3360
      TabIndex        =   4
      Top             =   4920
      Width           =   1215
   End
   Begin VB.CommandButton che 
      Caption         =   "验证激活"
      Height          =   1095
      Left            =   1800
      TabIndex        =   3
      Top             =   4920
      Width           =   1215
   End
   Begin VB.CommandButton bak 
      Caption         =   "备份许可"
      Height          =   1095
      Left            =   360
      TabIndex        =   2
      Tag             =   "4"
      Top             =   4920
      Width           =   1215
   End
   Begin VB.CommandButton off 
      Caption         =   "激活Office"
      Height          =   975
      Left            =   3360
      TabIndex        =   1
      Top             =   3720
      Width           =   2775
   End
   Begin VB.CommandButton win 
      Caption         =   "激活Windows"
      Height          =   975
      Left            =   360
      TabIndex        =   0
      Top             =   3720
      Width           =   2655
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
Private Sub abo_Click()
MsgBox "皮卡丘数字许可授权工具V2.0" & vbCrLf & "-----------------------------" & vbCrLf & "@2018 PIKACHU 皮卡丘开发" & vbCrLf & "此软件授权  飞扬俱乐部  使用"
End Sub
Private Sub bak_Click()
Dim str
str = App.Path
Shell str & "\bak.exe"
End Sub
Private Sub che_Click()
Shell "cmd.exe /c slmgr /xpr"
End Sub
Private Sub exit_Click()
End
End Sub
Private Sub Frame1_DragDrop(Source As Control, X As Single, Y As Single)

End Sub


Private Sub off_Click()
Dim i As Integer
  i = MsgBox("激活所有Office？ ！！！！此操作不可逆 ！！！！" & vbCrLf & "如果你已有正版密钥或者已经激活，建议取消激活", vbYesNo)
  If i = vbYes Then
Shell "cmd.exe /c color 2f && cscript ""%ProgramFiles(x86)%\Microsoft Office\Office16\ospp.vbs"" /sethst:vcn1.99pika.com && cscript ""%ProgramFiles(x86)%\Microsoft Office\Office16\ospp.vbs"" /act && cscript ""%ProgramFiles(x86)%\Microsoft Office\Office16\ospp.vbs"" /dstatus"
Shell "cmd.exe /c color 2f && cscript ""%ProgramFiles(x86)%\Microsoft Office\Office15\ospp.vbs"" /sethst:vcn1.99pika.com && cscript ""%ProgramFiles(x86)%\Microsoft Office\Office15\ospp.vbs"" /act && cscript ""%ProgramFiles(x86)%\Microsoft Office\Office15\ospp.vbs"" /dstatus"
Shell "cmd.exe /c color 2f && cscript ""%ProgramFiles(x86)%\Microsoft Office\Office14\ospp.vbs"" /sethst:vcn1.99pika.com && cscript ""%ProgramFiles(x86)%\Microsoft Office\Office14\ospp.vbs"" /act && cscript ""%ProgramFiles(x86)%\Microsoft Office\Office14\ospp.vbs"" /dstatus"
Shell "cmd.exe /c color 2f && cscript ""%ProgramFiles%\Microsoft Office\Office16\ospp.vbs"" /sethst:vcn1.99pika.com && cscript ""%ProgramFiles%\Microsoft Office\Office16\ospp.vbs"" /act && cscript ""%ProgramFiles%\Microsoft Office\Office16\ospp.vbs"" /dstatus"
Shell "cmd.exe /c color 2f && cscript ""%ProgramFiles%\Microsoft Office\Office15\ospp.vbs"" /sethst:vcn1.99pika.com && cscript ""%ProgramFiles%\Microsoft Office\Office15\ospp.vbs"" /act && cscript ""%ProgramFiles%\Microsoft Office\Office15\ospp.vbs"" /dstatus"
Shell "cmd.exe /c color 2f && cscript ""%ProgramFiles%\Microsoft Office\Office14\ospp.vbs"" /sethst:vcn1.99pika.com && cscript ""%ProgramFiles%\Microsoft Office\Office14\ospp.vbs"" /act && cscript ""%ProgramFiles%\Microsoft Office\Office14\ospp.vbs"" /dstatus"
Delay 5
MsgBox ("已经成功发送授权许可给所有Office，如果激活失败请记录原因并反馈给皮卡丘")
  Else
  End If

End Sub

Private Sub vol_Click()
MsgBox ("**************欢迎使用版本转换软件**************" & vbCrLf & "【使用方法】请对应选择【家庭版】或者【专业版】" & vbCrLf & "再选择【Business-VOL版】【内置证书】然后激活")
Dim str
str = App.Path
Shell str & "\run.bat"
End Sub

Private Sub win_Click()
Dim i As Integer
  i = MsgBox("确定激活此Windows？ ！！！！此操作不可逆 ！！！！" & vbCrLf & "此操作将会清除当前全部许可，请确认原有许可已经备份" & vbCrLf & "如果要备份当前许可，请点击“否(N)”然后点击""备份许可""", vbYesNo)
  If i = vbYes Then
    Shell "cmd.exe /c slmgr /skms vcn1.99pika.com"
    Delay 3
    Shell "cmd.exe /c slmgr /ato"
    Delay 3
    Shell "cmd.exe /c slmgr /xpr"
  Else
  End If

End Sub

Private Sub Form_Unload(Cancel As Integer)
  Dim iAnswer As Integer
  iAnswer = MsgBox("确定要退出吗?", vbYesNo)
  If iAnswer = vbNo Then
      Cancel = True
  Else
      End
  End If
End Sub

