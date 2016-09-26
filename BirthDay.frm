VERSION 5.00
Begin VB.Form Form2 
   Caption         =   "Happy Birthday !!!!!"
   ClientHeight    =   9435
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   8235
   LinkTopic       =   "Form2"
   ScaleHeight     =   9435
   ScaleWidth      =   8235
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer1 
      Interval        =   500
      Left            =   1320
      Top             =   120
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Udah kemaren sih, tapi gak apa2, happy birthday again !!!!!"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   1215
      Left            =   600
      TabIndex        =   1
      Top             =   240
      Width           =   7215
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "Happy BirthDay !!!!!!"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   615
      Left            =   -240
      TabIndex        =   0
      Top             =   120
      Width           =   8775
   End
   Begin VB.Image Image1 
      Height          =   7740
      Index           =   1
      Left            =   1320
      Picture         =   "BirthDay.frx":0000
      Top             =   840
      Width           =   5805
   End
   Begin VB.Image Image1 
      Height          =   7740
      Index           =   0
      Left            =   1320
      Picture         =   "BirthDay.frx":92A74
      Top             =   840
      Width           =   5805
   End
   Begin VB.Image Image1 
      Height          =   7740
      Index           =   4
      Left            =   1320
      Picture         =   "BirthDay.frx":1254E8
      Top             =   840
      Width           =   5805
   End
   Begin VB.Image Image1 
      Height          =   7740
      Index           =   3
      Left            =   1320
      Picture         =   "BirthDay.frx":1B7F5C
      Top             =   840
      Width           =   5805
   End
   Begin VB.Image Image1 
      Height          =   7740
      Index           =   2
      Left            =   1320
      Picture         =   "BirthDay.frx":24A9D0
      Top             =   840
      Width           =   5805
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim x As Integer

Private Sub Form_Load()
With Me
   .Top = (Screen.Height - .Height) / 2
   .Left = (Screen.Width - .Width) / 2
End With
Form1.Show
Label2.Visible = False
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Form1.clicked = "true"
End Sub

Private Sub Timer1_Timer()
If Day(Now) = 27 Then
    Label2.Visible = True
    Label1.Visible = False
End If
Image1(0).Visible = False
Image1(1).Visible = False
Image1(2).Visible = False
Image1(3).Visible = False
Image1(4).Visible = False
Image1(x).Visible = True
If x = 4 Then x = -1
x = x + 1
End Sub
