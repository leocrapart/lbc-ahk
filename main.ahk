#Include %A_ScriptDir%\data-interface.ahk
CoordMode, Mouse, Screen
SetTimer, posTooltip, 10
return

posTooltip:
	MouseGetPos, x, y
	ToolTip, % "x: " x "`ny: " y
return


^r::
  ; init()

  loop 30 {
    if (empty(A_Index)) {
      break
    }
    n := A_Index
    deposerAnnoncePro(title(n), description(n), image(n), location(n), phone(n))
    sleep timing() * 1000
  }

  ; logout()
	return



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
  ; google chrome icon 
  doubleClick(50, 30)
  sleep 5000

  ; (full screen web page)

  ; private navigation
  click 1345, 52
  sleep 500
  click 1150, 125
  sleep 5000

  ; chrome search bar
  click 200, 53
  paste("https://leboncoin.fr/deposer-une-annonce")
  send {enter}
  sleep 7000

  ; again
  click 200, 53
  paste("https://leboncoin.fr")
  send {enter}
  sleep 7000

  ; autoriser les cookies
  click 788, 622
  sleep 2000

  ; login
  ; aller à deposer une annonce
  click 200, 53
  paste("https://leboncoin.fr/deposer-une-annonce")
  send {enter}
  sleep 3000
  ; icone se connecter
  click 1169, 105
  sleep 5000

  ; email
  click 540, 420
	sleep 500
  paste(%email%)
  sleep 500
  ; password
  click 540, 520
  sleep 500
  paste(%password%)
  sleep 500

  ; bouton se connecter
  click 680, 625
  sleep 7000

  ; ; cliquer sur "j'ai compris"
  ; click 605, 644
  ; sleep 2000
	return
}

deposerAnnoncePro(title, description, image, location, phone) {
; deposer annonce url
  click 200, 53
  sleep 500
  paste("leboncoin.fr/deposer-une-annonce")
  send {enter}
  sleep 3000

  ; prestation de services
  ; categories 
  ; services > prestation de services
  ; search bar
  click 300, 300
  sleep 200
  paste("prestations")
  sleep 1000
  click 260, 360
  sleep 1000
  ;continue
  click 890, 370

  ; title
  doubleClick(210, 270)
  sleep 200
  paste(%title%)

  ;; description
  click 220, 480
  paste(%description%)
  ; unfocus 
  click 50, 300
  ; continue
  send {end}
  sleep 1000
  click 880, 650
  sleep 1000

  ; price
  ; no price

  ; continue
  click 900, 340
  sleep 1000

  ;; image

  ; wait image loading
  sleep 4000
  ; continue
  click 826 642
  sleep 1000

  ; location
  tripleClick(320, 240)
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
  doubleClick(590, 445)
  sleep 500
  paste(%phone%)
  sleep 1000

  ; ;;;;;;;;;;;;;;;;;;;;; 
  ; continue
  click 890, 590
  sleep 3000
  ; no boost
  click 1050, 700
  sleep 4000

  ; back to homepage
  click 220, 100
  sleep 3000

  ; idle position, tells the bot finished
	mouseMove 100, 100
	return
}


logout() {
  ; search bar
  click 200, 53
  paste("leboncoin.fr/deposer-une-annonce")

  ; account icon
  click 1180, 105

  ; logout
  click 1130, 415
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