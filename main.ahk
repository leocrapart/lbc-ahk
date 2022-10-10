#Include %A_ScriptDir%\data-interface2.ahk
CoordMode, Mouse, Screen
SetTimer, posTooltip, 10
return

posTooltip:
	MouseGetPos, x, y
	ToolTip, % "x: " x "`ny: " y
return

; Nice (06000)
; Marseille (13008) 8e Arrondissement
; Brest (29200)
; Bordeaux (33000)
; Grenoble (38000)
; Montpellier (34000)
; Lille (59000)
; Perpignan (66000)
; Lyon (69008) 8e Arrondissement
; Paris (75018) 18e Arrondissement

^r::
	; Gosub, openPrivateLeboncoin
	; Gosub, login

	n := 7

	deposerAnnoncePro(title(n), description(n), image(n), location(n), phone(n))
	Sleep 330000

return



deposerAnnoncePro(title, description, image, location, phone)
{
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


;c;e; os agnostic
;c;e; sleep
;c;e; send keys
; ;e; paste text (and emojis)
;c;e; click
;c;e; wheeldown
;x;e; excel read
;x;   private chrome
;  x  pass bot check



; next
; compte entreprise
; déménagement > prestation de services


; schedule
; 21h, moins de dépots d'annonces
; 20h-21h, pleins de dépots


; 10 titres
; 10 descriptions
; 10 villes
; alterner les numéros 1 sur 2
; 6 mins d'intervalle



; Nice (06000)
; Marseille (13008) 8e Arrondissement
; Brest (29200)
; Bordeaux (33000)
; Grenoble (38000)
; Montpellier (34000)
; Lille (59000)
; Perpignan (66000)
; Lyon (69008) 8e Arrondissement
; Paris (75018) 18e Arrondissement


; traquer les annonces postées par ville
; en ligne != affichée




; 8h00
; Nice (06000)
; Sérieux Transporteurs / PAS CHER
; 1.jpg
; * * * LONGUE DISTANCE UNIQUEMENT * * *

; Tarifs a partir de 649€

; Location  Camion  20m3  avec  Chauffeur, Nos  Utilitaires  sont  Équipés  de Hayon, ideal pour un Déménagement ou pour Transporter de la Marchandise en Vrac et sur  Palettes.

; Le jour du Déménagement, il suffit de réunir de la famille  et  des  amis  pour  vous  aider  à  Charger  et  à  Décharger le Camion.

; Pas  de  groupage  ou  retard  de  Livraison, Vos  effets  sont  achemines  partout  en   France  et  Europe  en  24/48h.

; Nous  proposons  une  offre  TOUT  INCLUS : le Camion + le Chauffeur + les Frais de route + le Carburant + l'Assurance incluse et Gratuite !

; Avantages :
; PAS DE CAUTION
; Vous ne payez que l’aller simple

; Mots clefs :

; Déménageur / Transporteur / Transport / Déménager / Transporter



; 8h06
; Marseille (13008) 8e Arrondissement
; On vous assure un meilleur Déménagement
; 2.jpg

; 8h12
; Brest (29200)
; Déménagement et Transport de qualité
; 3.jpg


; 8h18
; Bordeaux (33000)
; Profitez de l’expertise d'Équipes de Déménagement
; 4.jpg

; 8h24
; Grenoble (38000)
; Nous mobilisons une équipe de Déménageurs Qualifiés
; 5.jpg

; 8h30
; Montpellier (34000)
; En toute sécurité, on vous Déménage
; 6.jpg


; 8h36
; Lille (59000)
; Déménagement  ET  Transport / Transporteur Qualifié
; 7.jpg

; 8h42
; Perpignan (66000)
; L'expert Déménageur / prix choc
; 8.jpg

; 8h48
; Lyon (69008) 8e Arrondissement
; Équipe de Déménageurs près de chez vous
; 9.jpg

; 8h54
; Paris (75018) 18e Arrondissement
; Déménagez en toute Sérénité
; 10.jpg
