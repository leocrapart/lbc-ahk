#Include %A_ScriptDir%\data-interface.ahk
CoordMode, Mouse, Screen
SetTimer, posTooltip, 10
return

posTooltip:
  MouseGetPos, x, y
  ToolTip, % "x: " x "`ny: " y
return


^r::
  init()
  loop {
    if (empty(A_Index)) {
      break
    }
    n := A_Index
    deposerAnnoncePro(title(n), description(n), image(n), location(n), phone(n))
    sleep timing() * 1000
  }

  logout()
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

init() {
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
  paste(email())
  sleep 500
  ; password
  click 540, 520
  sleep 500
  paste(password())
  sleep 500

  ; bouton se connecter
  click 680, 625
  sleep 7000

  ; cliquer sur "j'ai compris"
  click 670, 586
  sleep 2000
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
  click 300, 350
  sleep 200
  paste("prestations")
  sleep 1000
  send {enter}
  sleep 1000
  ;continue
  click 890, 400
  sleep 1000

  ; title
  doubleClick(210, 270)
  sleep 500
  paste(title)
  sleep 500

  ;; description
  click 220, 480
  paste(description)
  sleep 500

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
  ; ajouter image icon 
  click 250, 300
  sleep 1000

  ; path bar
  click 346, 53
  sleep 500
  paste("C:\Users\admin\Desktop\lbc-images")
  sleep 500
  send {Enter}
  sleep 500

  ; file name
  click 269, 416
  sleep 500
  paste(image)
  sleep 500

  ; open
  click 510, 444



  ; wait image loading
  sleep 4000
  ; continue
  click 890, 606
  sleep 1000

  ; location
  tripleClick(320, 240)
  sleep 1000
  paste(location)
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
  click 561, 490
  sleep 100
  click 561, 490
  sleep 1000
  send % phone
  sleep 1000

  

  ; ;;;;;;;;;;;;;;;;;;;;; 
  ; continue
  click 890, 640
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


ESC::ExitApp