Dim sInput
Dim oShell

Set oShell = WScript.CreateObject ("WSCript.shell")

intAnswer = _
    Msgbox("Do you want start server?", _
vbYesNo, "Server")
If intAnswer = vbYes Then
    Msgbox "Write your port"
    sInput = InputBox("Port here.If use default port, just click ok.")
    

    If sInput = "" or sInput = " " or sInput = "  " Then
        oShell.run "cmd /K echo Is null & pause & exit"
    Else
        oShell.run "cmd /K echo This must start with python & pause & cls & echo The Max and Min is from 0 to 65535 & python -m http.server " & sInput
    End If
Else
    Msgbox "Click to close now"
End If