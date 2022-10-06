
openPrivateChrome:
	WinActivate, Program Manager
	Sleep, 1000
	Send, {LWin}
	Sleep, 1000
	Send, chrome
	Sleep, 1000
; private chrome
	Click, 800, 551
	Sleep, 1000
return


openChrome:
	WinActivate, Program Manager
	Sleep, 1000
	Send, {LWin}
	Sleep, 1000
	Send, chrome
	Sleep, 1000
	Send, {Enter}
	Sleep, 1000
return

openLeboncoin:
	Gosub, openChrome
	Send, leboncoin.fr
	Sleep, 1000
	Send, {Enter}
	Sleep, 1000
return

openPrivateLeboncoin:
	Gosub, openPrivateChrome
	Send, leboncoin.fr
	Sleep, 1000
	Send, {Enter}
	Sleep, 3000
; accept conditions
	Click, 914, 700
	Sleep, 1000
return
