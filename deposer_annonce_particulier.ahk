deposerAnnonce:
; deposer annonce url
	Click, 274, 47
	Sleep, 500
	Send, https://www.leboncoin.fr/deposer-une-annonce
	Send, {Enter}
	Sleep, 3000

; title
	Click, 300, 369
	Send, titre lala
; continue
	Click, 691, 375
	Sleep, 1000
; prestation de services
; categories
	Click, 422, 637
	Sleep, 200
; services
	Send {WheelDown}
	Sleep, 200
	Click, 400, 759
	Sleep, 200
; services > prestation de services
	Click, 700, 389
	Sleep, 500
; continue
	Click, 993, 514
	Sleep, 500

; description
	Click, 313, 513
	Send, Description 2 description
; continue
	Send {WheelDown}
	Sleep, 200
	Click, 1000, 800
	Sleep, 1000

; price
	Click, 300, 300
	Send, 10
; continue
	Click, 1000, 370
	Sleep, 1000

; image
; load image button
	Click, 380, 340
	Sleep, 1000
; path bar
	Click, 460, 50
	Sleep, 200
; path to image folder
	Send, C:\Users\leocr\Desktop\lbc-images
	Send, {Enter}
	Sleep, 1000
; file name
; click file name input
	Click, 310, 414
; insert file name
	Send, crassula moyenne.jpg
	Send, {Enter}

; wait image loading
	Sleep, 7000
; continue
	Click, 1000, 460
	Sleep, 500

; location
	Click, Left, 400, 275, 3
	Send, Talence (33400)
	Send, {Enter}
	Sleep, 500
; continue
	Click, 400, 275
	Send, {Enter}
	Sleep, 500

; phone
	Click, 650, 450
	Send, 0652722632
; continue
	Send, {Enter}
	Sleep, 2000

; no boost
	Click, 1200, 830
	Sleep, 500

; back to homepage
	Click, 330, 127
	Sleep, 1000

return