VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form frmIDACompare 
   Caption         =   "IDA Compare"
   ClientHeight    =   3555
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   8415
   Icon            =   "frmPluginSample.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   3555
   ScaleWidth      =   8415
   StartUpPosition =   2  'CenterScreen
   Begin MSComctlLib.ProgressBar pb 
      Height          =   255
      Left            =   2100
      TabIndex        =   8
      Top             =   3240
      Width           =   6255
      _ExtentX        =   11033
      _ExtentY        =   450
      _Version        =   393216
      Appearance      =   1
   End
   Begin VB.CommandButton Command2 
      Caption         =   "select"
      Height          =   255
      Left            =   7620
      TabIndex        =   6
      Top             =   120
      Width           =   735
   End
   Begin VB.CommandButton Command1 
      Caption         =   "new"
      Height          =   255
      Left            =   6750
      TabIndex        =   4
      Top             =   120
      Width           =   735
   End
   Begin VB.TextBox txtDB 
      Height          =   315
      Left            =   1140
      OLEDropMode     =   1  'Manual
      TabIndex        =   3
      Top             =   60
      Width           =   5595
   End
   Begin VB.Frame Frame1 
      Height          =   3135
      Left            =   0
      TabIndex        =   1
      Top             =   420
      Width           =   2055
      Begin VB.CommandButton cmdImportNames 
         Caption         =   "Import Match Names"
         Height          =   375
         Left            =   120
         TabIndex        =   12
         Top             =   2640
         Width           =   1815
      End
      Begin VB.CommandButton cmdCompare 
         Caption         =   "Launch Signature Scan"
         Height          =   375
         Index           =   1
         Left            =   120
         TabIndex        =   11
         Top             =   2040
         Width           =   1815
      End
      Begin VB.CommandButton cmdAddSignature 
         Caption         =   "Add Sel to Signatures"
         Height          =   375
         Left            =   120
         TabIndex        =   10
         Top             =   1620
         Width           =   1815
      End
      Begin VB.CommandButton cmdCompare 
         Caption         =   "Launch Compare UI"
         Height          =   375
         Index           =   0
         Left            =   120
         TabIndex        =   9
         Top             =   1020
         Width           =   1815
      End
      Begin VB.CommandButton cmdExport 
         Caption         =   "Save Compare Snap 2"
         Height          =   375
         Index           =   1
         Left            =   120
         TabIndex        =   7
         Top             =   600
         Width           =   1815
      End
      Begin VB.CommandButton cmdExport 
         Caption         =   "Save Compare Snap 1"
         Height          =   375
         Index           =   0
         Left            =   135
         TabIndex        =   5
         Top             =   180
         Width           =   1815
      End
      Begin VB.Line Line1 
         BorderColor     =   &H00404040&
         BorderStyle     =   6  'Inside Solid
         DrawMode        =   7  'Invert
         Index           =   1
         X1              =   180
         X2              =   1800
         Y1              =   2520
         Y2              =   2520
      End
      Begin VB.Line Line1 
         BorderColor     =   &H00404040&
         BorderStyle     =   6  'Inside Solid
         DrawMode        =   7  'Invert
         Index           =   0
         X1              =   180
         X2              =   1800
         Y1              =   1500
         Y2              =   1500
      End
   End
   Begin MSComctlLib.ListView lv 
      Height          =   2715
      Left            =   2100
      TabIndex        =   0
      Top             =   480
      Width           =   6255
      _ExtentX        =   11033
      _ExtentY        =   4789
      View            =   3
      LabelEdit       =   1
      MultiSelect     =   -1  'True
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      FullRowSelect   =   -1  'True
      GridLines       =   -1  'True
      _Version        =   393217
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      BorderStyle     =   1
      Appearance      =   1
      NumItems        =   5
      BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Text            =   "n"
         Object.Width           =   529
      EndProperty
      BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   1
         Text            =   "Start EA"
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   2
         Text            =   "End EA"
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   3
         Text            =   "Length"
         Object.Width           =   1235
      EndProperty
      BeginProperty ColumnHeader(5) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   4
         Text            =   "Func Name"
         Object.Width           =   3351
      EndProperty
   End
   Begin VB.Label Label1 
      Caption         =   "Current MDB"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   -1  'True
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   255
      Left            =   120
      TabIndex        =   2
      Top             =   120
      Width           =   1215
   End
   Begin VB.Menu mnuPopup 
      Caption         =   "mnuPopup"
      Visible         =   0   'False
      Begin VB.Menu mnuCheckAll 
         Caption         =   "Select All"
         Index           =   0
      End
      Begin VB.Menu mnuCheckAll 
         Caption         =   "Select None"
         Index           =   1
      End
      Begin VB.Menu mnuCheckAll 
         Caption         =   "Invert Selection"
         Index           =   2
      End
      Begin VB.Menu mnuCheckAll 
         Caption         =   "Remove Selected"
         Index           =   3
      End
      Begin VB.Menu mnuCheckAll 
         Caption         =   "Remove UnSelected"
         Index           =   4
      End
   End
End
Attribute VB_Name = "frmIDACompare"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
'Author: david@idefense.com <david@idefense.com, dzzie@yahoo.com>
'
'License: Copyright (C) 2005 iDefense.com, A Verisign Company
'
'         This program is free software; you can redistribute it and/or modify it
'         under the terms of the GNU General Public License as published by the Free
'         Software Foundation; either version 2 of the License, or (at your option)
'         any later version.
'
'         This program is distributed in the hope that it will be useful, but WITHOUT
'         ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
'         FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
'         more details.
'
'         You should have received a copy of the GNU General Public License along with
'         this program; if not, write to the Free Software Foundation, Inc., 59 Temple
'         Place, Suite 330, Boston, MA 02111-1307 USA

'added support 64 bit disassemblies (still requires 32 bit IDA) 3.6.14 -dzzie

Public cn As New Connection
Public dlg As New clsCmnDlg

Private exportedA As Boolean
Private exportedB As Boolean

Enum ExportModes
    compare1 = 0
    Compare2 = 1
    SignatureMode = 2
    TmpMode = 3
End Enum
    

Private Sub cmdAddSignature_Click()
    DoExport SignatureMode
End Sub

Private Sub cmdCompare_Click(index As Integer)
    On Error GoTo hell
    Dim pth As String
    Dim exe As String
    Dim r As Long, rr As Long

    If index = 0 Then
        pth = txtDB
    Else
        pth = DllPath & "signatures.mdb"
        If Not FileExists(pth) Then
            MsgBox "Could not find signature database?: " & vbCrLf & vbCrLf & pth, vbInformation
            Exit Sub
        End If
        If OpenDB(cn, pth) Then
            r = cn.Execute("Select count(autoid) as cnt from signatures")!cnt
            If r < 1 Then
                MsgBox "You have not yet added any signatures to scan for", vbInformation
                cn.Close
                Exit Sub
            End If
            cn.Execute "Delete from tmp" 'clear out any old tmp data
            cn.Close
        End If
    End If

    If Not FileExists(pth) Then
        MsgBox "Could not locate DB, """ & pth & """", vbInformation
        Exit Sub
    End If

    If index = 1 Then     'save current db functions to tmp table for compare
        DoExport TmpMode  'to make sure saved and in same db as signatures so cheat
    End If

    exe = DllPath & "ida_compare.exe"

    If Not FileExists(exe) Then
        MsgBox "Could not locate ida_compare?" & vbCrLf & vbCrLf & exe, vbInformation
        Exit Sub
    End If

    exe = exe & " """ & pth & """" & IIf(index = 0, "", " /sigscan")

    Shell exe, vbNormalFocus
    Me.WindowState = vbMinimized
    'minimize ida

Exit Sub
hell: MsgBox "Line: " & Erl & " Desc:" & Err.Description

End Sub

Private Sub cmdExport_Click(index As Integer)
    Dim mode As ExportModes

    mode = index

    If mode = Compare2 And exportedA Then
        If MsgBox("You already saved this idb to table A do " & vbCrLf & _
                  "you really want to save the same idb to " & vbCrLf & _
                  "table b as well to compare it with?", vbYesNo) = vbNo Then
            Exit Sub
        End If
    End If

    If mode = compare1 And exportedB Then
         If MsgBox("You already saved this idb to table B do " & vbCrLf & _
                   "you really want to save the same idb to " & vbCrLf & _
                   " table A as well to compare it with?", vbYesNo) = vbNo Then
            Exit Sub
        End If
    End If

    DoExport mode
End Sub

Private Sub cmdImportNames_Click()
    On Error Resume Next

    Dim idba, idbb, curidb
    Dim isTableA As Boolean
    Dim sigMode, activeTable
    Dim warned As Boolean
    Dim ignoreIt As Boolean

    curidb = LCase(FileNameFromPath(LoadedFile))

    If Len(cn.ConnectionString) = 0 Then  'hasnt been opened yet
        If Not FileExists(txtDB) Then
            MsgBox "There is no database currently active", vbInformation
            Exit Sub
        Else
            If Not OpenDB(cn, txtDB) Then Exit Sub
        End If
    Else
        OpenDB cn, Empty 'use existing connection string
    End If

    sigMode = IIf(InStr(1, cn.ConnectionString, "signatures.mdb", vbTextCompare) > 0, True, False)

    If Not sigMode Then
        idba = FileNameFromPath(LCase(cn.Execute("Select top 1 idb from a")!idb))
        idbb = FileNameFromPath(LCase(cn.Execute("Select top 1 idb from b")!idb))

        If idba = curidb And LCase(idba) = LCase(idbb) Then
            Dim x As VbMsgBoxResult

            x = MsgBox("Both disassemblies in this database have the same filename." & _
                        vbCrLf & vbCrLf & "Would you like to import the names from Snapshot 1?", vbYesNoCancel)

            If x = vbCancel Then Exit Sub
            activeTable = IIf(x = vbYes, "a", "b")

        ElseIf idba = curidb Then
            activeTable = "a"
        ElseIf idbb <> curidb Then
            MsgBox "Could not find an entry for the current idb in this database!" & vbCrLf & vbCrLf & _
                   "CurDB: " & curidb & vbCrLf & _
                   "IDB_A: " & idba & vbCrLf & _
                   "IDB_B: " & idbb
            Exit Sub
        Else
            activeTable = "b"
        End If
    Else
        idba = LCase(cn.Execute("Select top 1 idb from tmp")!idb)
        activeTable = "tmp"
        If idba <> curidb Then
            MsgBox "Could not find an entry for the current idb in this database!"
            Exit Sub
        End If
    End If

    Dim rs As Recordset
    Dim errors()

    Set rs = cn.Execute("Select * from " & activeTable & " where len(newName)>0")

    If rs Is Nothing Then
        MsgBox "No records had newNames to import"
        Exit Sub
    End If

    Dim startEa As String, orgName As String, fname As String
    Dim count As Long, ret As Long
    
    While Not rs.EOF
        startEa = rs!startEa
        orgName = LCase(Trim(rs!fname))
        fname = Trim(LCase(GetFName(startEa)))
        count = count + 1
        
        'MsgBox "Org " & orgName & "(" & Len(orgName) & ") Cur " & fname & "(" & Len(fname) & ")"
        'MsgBox Len(fname)

        If fname <> orgName Then
            If Not warned Then
                warned = True
                If MsgBox("Did not find expected function name at offset " & Hex(startEa) & vbCrLf & vbCrLf & _
                            "Expecting function name: " & orgName & " Found: " & fname & vbCrLf & vbCrLf & _
                            "Do you want to process it? This answer will be used for any future checks", vbYesNo) = vbYes Then
                    ignoreIt = True
                End If
            End If

            If ignoreIt Then
                ret = SetName(startEa, CStr(rs!newName))
                If ret <> 1 Then
                    push errors, "Couldnt rename offset " & Hex(startEa) & " to " & rs!newName & " - SetName returned " & ret
                Else
                    cn.Execute "Update " & activeTable & " set fname='" & CStr(rs!newName) & "' , newName='' where startEa='" & startEa & "'"
                End If
            Else
                push errors, "Couldnt rename offset " & Hex(startEa) & " - name didnt match expected"
            End If
            
        Else
            ret = SetName(startEa, CStr(rs!newName))
            If ret <> 1 Then
                push errors, "Couldnt rename offset " & Hex(startEa) & " to " & rs!newName & " - SetName returned " & ret
            Else
                cn.Execute "Update " & activeTable & " set fname='" & CStr(rs!newName) & "' , newName='' where startEa='" & startEa & "'"
            End If
        End If
        rs.MoveNext
    Wend

    Dim tmp
    tmp = Join(errors, vbCrLf)
    If Len(tmp) > 2 Then
        MsgBox count & " Imports done with " & UBound(errors) & " Errors: " & vbCrLf & vbCrLf & tmp, vbInformation
    Else
        MsgBox count & " Import Done!"
    End If

    Refresh


End Sub

Private Sub Command1_Click()
    Dim pth As String
    Dim base As String

    On Error GoTo hell

    'base = DllPath & "blank.mdb"
    base = App.path & "\blank.mdb"

    If Not FileExists(base) Then
        MsgBox "Could not find blank database to use:" & vbCrLf & vbCrLf & _
               base, vbInformation
        Exit Sub
    End If

    pth = dlg.SaveDialog(CustomFilter, , "Save new DB as..", , Me.hwnd)
    If Len(pth) = 0 Then Exit Sub
    If LCase(VBA.Right(pth, 4)) <> ".mdb" Then pth = pth & ".mdb"

    FileCopy base, pth
    txtDB = pth

    exportedA = False
    exportedB = False

    Exit Sub
hell:
    MsgBox Err.Description
End Sub

Private Sub Command2_Click()
    Dim pth As String
    pth = dlg.OpenDialog(CustomFilter, , "Select existing db to export to", Me.hwnd)
    If Len(pth) = 0 Then Exit Sub
    exportedA = False
    exportedB = False
    txtDB = pth
End Sub


 
Private Sub Form_Load()
    Dim li As ListItem
    Dim cnt As Long, i As Long
    Dim startPos As String, endPos As String
    
    Me.Move (Screen.Width / 2) - (Me.Width / 2), _
            (Screen.Height / 2) - (Me.Height / 2)
    
    
    Dim h As Long
    
    'If isIde Then 'this doesnt work in IDE testing because it wont load outside of IDA...
    '    h = GetModuleHandle("C:\IDA6.5\plugins\ida_compare.plw")
    'Else
        h = GetModuleHandle("ida_compare.plw") 'if 0 it must be the .p64 that loaded us..
    'End If
    
    x64Mode = IIf(h = 0, True, False)
    
    Me.Caption = Me.Caption & IIf(h = 0, " (64 bit)", " (32 Bit)")
    
    dlg.SetCustomFilter "Access Database (*.mdb)", "*.mdb"
    
    cnt = NumFuncs()
   
    For i = 0 To cnt - 1 'NumFuncs ary 0 based
        Set li = lv.ListItems.Add(, , i)
        startPos = FunctionStart(i)
        endPos = FunctionEnd(i)
        li.SubItems(1) = startPos
        li.SubItems(2) = endPos
        li.SubItems(3) = SubX(endPos, startPos)
        li.SubItems(4) = GetFName(startPos)
    Next
    
End Sub


 

Sub DoExport(mode As ExportModes)
    On Error GoTo hell

    Dim leng As Long, start As String
    Dim buf() As Byte
    Dim pth As String
    Dim bytes As String
    Dim asm As String
    Dim tbl As String
    Dim cnt As Long
    Dim idb As String
    Dim li As ListItem

    If mode >= SignatureMode Then
        pth = DllPath & "signatures.mdb"
        'MsgBox "Signature mode db=" & pth & " Exists?: " & FileExists(pth)
    Else
        pth = txtDB
        exportedA = IIf(mode = compare1, True, exportedA)
        exportedB = IIf(mode = compare1, exportedB, True)
    End If

    If Not FileExists(pth) Then
        MsgBox "File not found, select mdb: " & pth, vbInformation
        Exit Sub
    End If

    OpenDB cn, pth

    Select Case mode
        Case compare1:      tbl = "a"
        Case Compare2:      tbl = "b"
        Case SignatureMode: tbl = "signatures"
        Case TmpMode:       tbl = "tmp"
    End Select

    If mode < SignatureMode Then
        cnt = cn.Execute("Select count(autoid) as cnt from " & tbl)!cnt
        If cnt > 0 Then
            If MsgBox("Table " & tbl & " is already full of data overwrite?", vbYesNo) = vbNo Then
                Exit Sub
            Else
                cn.Execute "Delete from " & tbl
            End If
        End If
    ElseIf mode = TmpMode Then
        cn.Execute "Delete from " & tbl
    End If

    pb.Value = 0
    pb.Max = lv.ListItems.count

    'idb = FileNameFromPath(loadedFile)
    idb = LoadedFile()
    If Len(idb) > 254 Then idb = Right(idb, 254) 'in case its a binary of the same name but different paths...
    If Len(idb) = 0 Then idb = "sample" 'maybe they loaded a lib file?

    For Each li In lv.ListItems

        If mode = SignatureMode And Not li.Selected Then GoTo nextOne

1        leng = li.SubItems(3)
2        start = li.SubItems(1)
3        bytes = HexDumpBytes(start, leng) 'debug me
4        asm = GetAsmRange(start, leng)  'debug me
5        Insert cn, tbl, "idb,bytes,disasm,index,leng,fname,startEA", idb, bytes, asm, li.Text, leng, li.SubItems(4), start

nextOne:
6        pb.Value = pb.Value + 1
    Next

    pb.Value = 0
    If mode <> TmpMode Then MsgBox "Functions saved to mdb", vbInformation

Exit Sub
hell: MsgBox "Error in DoExport: Line: " & Erl() & " Description: " & Err.Description
End Sub

Private Sub Form_Unload(Cancel As Integer)
    On Error Resume Next
    cn.Close
    Set dlg = Nothing
End Sub

Private Sub Label1_Click()
    
    On Error Resume Next
    Dim idba, idbb, curidb, sigMode
    
    curidb = LoadedFile

    If Len(cn.ConnectionString) = 0 Then  'hasnt been opened yet
        If Not FileExists(txtDB) Then
            MsgBox "There is no database currently active", vbInformation
            Exit Sub
        Else
            If Not OpenDB(cn, txtDB) Then Exit Sub
        End If
    Else
        OpenDB cn, Empty 'use existing connection string
    End If

    sigMode = IIf(InStr(1, cn.ConnectionString, "signatures.mdb", vbTextCompare) > 0, True, False)

    If Not sigMode Then
        idba = cn.Execute("Select top 1 idb from a")!idb
        idbb = cn.Execute("Select top 1 idb from b")!idb
    
        MsgBox "Cur_Idb: " & curidb & vbCrLf & _
               "Table 1: " & idba & vbCrLf & _
               "Table 2: " & idbb, vbInformation
               
    Else
        MsgBox "Cur_Idb: " & curidb & vbCrLf & "Signature scan mode", vbInformation
    End If
    

End Sub

Private Sub lv_MouseUp(Button As Integer, Shift As Integer, x As Single, Y As Single)
    If Button = 2 Then PopupMenu mnuPopup
End Sub

Private Sub mnuCheckAll_Click(index As Integer)

    Dim li As ListItem

top:
    For Each li In lv.ListItems
        Select Case index
            Case 0: li.Selected = True
            Case 1: li.Selected = False
            Case 2: li.Selected = Not li.Selected
            Case 3: If li.Selected Then lv.ListItems.Remove li.index: GoTo top
            Case 4: If Not li.Selected Then lv.ListItems.Remove li.index: GoTo top
        End Select
    Next

End Sub

Private Sub txtDB_OLEDragDrop(Data As DataObject, Effect As Long, Button As Integer, Shift As Integer, x As Single, Y As Single)
    On Error Resume Next
    txtDB = Data.Files(1)
End Sub
