
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

login:
; login icon
	Click, 1270, 128
	Sleep, 1000
; email
	Click, 625, 450
	Sleep, 1000
	Send, leocrapart@yahoo.fr
	Sleep, 1000
; password
	Click, 650, 550
	Send, Dupr0pnet
	Sleep, 1000
; login button
	Click, 765, 650
	Sleep, 2000
return


receiveCode:
; click receive button
	Click, 785, 550
	Sleep, 1000
	; enter sms code
return