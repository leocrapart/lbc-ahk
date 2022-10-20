#Include %A_ScriptDir%\data-interface.ahk
CoordMode, Mouse, Screen
SetTimer, posTooltip, 10
return

posTooltip:
	MouseGetPos, x, y
	ToolTip, % "x: " x "`ny: " y
return


; uncomment to activate ctrl-r launch
; ^r::
; 	; Gosub, openPrivateLeboncoin
; 	; Gosub, login

; 	n := 7

; 	deposerAnnoncePro(title(n), description(n), image(n), location(n), phone(n))
; 	sleep 330000
; 	return

doubleClick(x, y) {
	click %x%, %y%
	click %x%, %y%
	return
}

tripleClick(x, y) {
	click %x%, %y%
	click %x%, %y%
	click %x%, %y%
	return
}

paste(text) {
	clipboard = %text%
	send ^v
	return
}

init(email, password) {
  click(398, 84)
  paste("https://leboncoin.fr")
  send {enter}
  sleep 7000

  ; autoriser les cookies
  click 732, 674
  sleep 1000

  ; login
  ; aller à deposer une annonce
  click 398, 84
  paste("https://leboncoin.fr/deposer-une-annonce")
  send {enter}
  sleep 3000
  ; icone se connecter
  click 1130, 126
  sleep 5000

  ; email
  click 495, 454
	sleep 500
  paste(%email%)
  sleep 500
  ; password
  click 542, 548
  sleep 500
  paste(%password%)
  sleep 500

  ; bouton se connecter
  click 619, 668
  sleep 7000

  ; cliquer sur "j'ai compris"
  click 605, 644
  sleep 2000
	return
}

deposerAnnoncePro(title, description, image, location, phone) {
; deposer annonce url
  click 179, 87
  sleep 500
  paste("leboncoin.fr/deposer-une-annonce")
  send {enter}
  sleep 3000

  ; prestation de services
  ; categories 
  ; services > prestation de services
  ; search bar
  click 314 334
  sleep 200
  paste("prestation")
  sleep 1000
  send {enter}
  sleep 1000
  ;continue
  click 840 400

  ; title
  click 159 295
  click 159 295
  sleep 200
  paste(%title%)

  ;; description
  click 147 517
  paste(%description%)
  ; unfocus 
  click 62 424
  ; continue
  send {end}
  sleep 1000
  click 846 726
  sleep 1000

  ; price
  ; no price

  ; continue
  click 825 367
  sleep 1000

  ;; image
  ; load image button
  click 198 303
  sleep 1000


  ; click Telechargements
  click 337 288
  sleep 200

  ; search bar
  click 873 116
  sleep 500
  paste(%image%)
  sleep 1000
  send {enter}
  sleep 2000
  click 476 253
  sleep 500
  send {enter}

  ; wait image loading
  sleep 4000
  ; continue
  click 826 642
  sleep 1000

  ; location
  tripleClick(661, 273)
  sleep 1000
  paste(%location%)
  sleep 1000
  send {enter}
  sleep 1000
  send {enter}
  sleep 2000
  ; ;unfocus
  ; (click 70 397)
  ; (sleep 500)
  ; ; continue
  ; (click 877 558)
  ; (sleep 1000)


  ; phone
  doubleClick(614, 514)
  sleep 500
  paste(%phone%)
  sleep 1000

  ; ;;;;;;;;;;;;;;;;;;;;; 
  ; continue
  click 848 669
  sleep 3000
  ; no boost
  click 995 775
  sleep 4000

  ; back to homepage
  click 174 131
  sleep 3000

  ; idle position, tells the bot finished
	mouseMove 100, 100
	return
}


; past one

deposerAnnoncePro0(title, description, image, location, phone) {

; deposer annonce url
	Click 274, 47
	Sleep 500
	Send https://www.leboncoin.fr/deposer-une-annonce
	Send {Enter}
	Sleep 3000

; prestation de services
; categories 
; services > prestation de services
	Click 400, 800
	Click 692, 439
	Sleep 1000
; continue
	Click 1000, 400
	Sleep 1000

; title
	Click 300, 300
	Send % title

; description
	Click 313, 513

	Clipboard = % description
	SendInput, ^v
; unfocus from multiline text input
	Click 100, 400
; continue
	Send {WheelDown}
	Sleep 75
	Send {WheelDown}
	Sleep 75
	Sleep 1000
	Click 1000, 800
	Sleep 1000

; ; price
; 	Click, 300, 300
; 	Send, 10

; continue
	Click 1000, 370
	Sleep 1000

; image
; load image button
	Click 380, 340
	Sleep 1000
; path bar
	Click 460, 50
	Sleep 1000
; path to image folder
	Send C:\Users\leocr\Desktop\lbc-images
	Send {Enter}
	Sleep 1000
; file name
; click file name input
	Click 310, 414
; insert file name
	Send % image
	Send {Enter}

; wait image loading
	Sleep 4000
; continue
	Click 1000, 640
	Sleep 1000

; location
	Click Left, 400, 275, 3
	Send % location
	Send {Enter}
	Sleep 1000
; continue
	Click 400, 275
	Send {Enter}
	Sleep 1000

; phone
	Click Left, 900, 575, 2
	Send % phone
;;;;;;;;;;;;;;;;;;;;; 
; ; continue
; 	Click, 1000, 730
; 	Sleep, 2000

; ; no boost
; 	Click, 1200, 830
; 	Sleep, 500

; ; back to homepage
; 	Click, 330, 127
; 	Sleep, 1000

	return
}
	
ESC::ExitApp