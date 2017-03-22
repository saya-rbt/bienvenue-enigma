Set WshShell = WScript.CreateObject("WScript.Shell")

Set objSysInfo = CreateObject("ADSystemInfo")
Set objCurrentUser = GetObject("LDAP://" & objSysInfo.UserName)


Dim sentence
sentence = Array("Bienvenue" & objCurrentUser.givenName  )
Set voice = CreateObject("SAPI.SpVoice")

WshShell.SendKeys "Hello World!"

do

For i = 1 To 100
WshShell.SendKeys(chr(&hAF))
Next

	voice.Rate = 1
	voice.Volume = 100
	Say = sentence(alea(0,UBound(sentence)))
	If (Len(Say) > 0) Then
		voice.Speak Say
	End If 
	WScript.Sleep 100
loop
  
Function alea(min, max)
	Randomize
	alea = Int((max-min+1)*Rnd+min)
End Function






