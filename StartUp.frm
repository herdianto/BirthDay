VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   1035
   ClientLeft      =   -9885
   ClientTop       =   -10050
   ClientWidth     =   3675
   LinkTopic       =   "Form1"
   ScaleHeight     =   1035
   ScaleWidth      =   3675
   Begin VB.Timer Timer1 
      Interval        =   12
      Left            =   360
      Top             =   240
   End
   Begin VB.Label Label1 
      Caption         =   "Label1"
      Height          =   255
      Left            =   1080
      TabIndex        =   0
      Top             =   360
      Width           =   1335
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim mnth As Integer
Dim days As Integer
Dim hours As Integer
Dim mins As Integer
Dim secs As Integer
Public clicked As String

Private Sub Form_Load()
'Timer1.Enabled = False
    If App.PrevInstance Then
        End
    End If
Me.Hide
Timer1.Interval = 1000
End Sub
    
Private Sub Timer1_Timer()
    mnth = Month(Now)
    days = Day(Now)
    hours = Hour(Now)
    mins = Minute(Now)
    secs = Second(Now)
    
    Label1.Caption = CStr(mnth) + " - " + CStr(days) + " - " + CStr(hours) + " - " + CStr(mins) + " - " + CStr(secs)
    If mnth = 9 And (days = 26 Or days = 27) Then
        If mins = 59 And secs = 59 Then
            Form2.Show
        End If
    End If
End Sub
