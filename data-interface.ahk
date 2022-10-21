#Include %A_ScriptDir%\xlsx.ahk

arr := ExcelToArray("data.xlsx")

title(n) {
	global arr
	return arr[n+1, 1]
}

description(n) {
	global arr
	return arr[n+1, 2]
}

image(n) {
	global arr
	return arr[n+1, 3]
}

location(n) {
	global arr
	return arr[n+1, 4]
}

phone(n) {
	global arr
	phoneId := arr[n+1, 5]
	return arr[2, 6+phoneId]
}

empty(n) {
	global arr
 	return (arr[n+1, 1] == "")
}

timing() {
	global arr
	return arr[5, 7]
}

email() {
	global arr
	return arr[8, 7]
}

password() {
	global arr
	return arr[11, 7]
}

; msgbox % title(1)


; MsgBox % title(1)
; MsgBox % description(1)
; MsgBox % image(1)
; MsgBox % location(1)
; MsgBox % phone(1)

; MsgBox % title(2)
; MsgBox % description(2)
; MsgBox % image(2)
; MsgBox % location(2)
; MsgBox % phone(2)

; MsgBox % title(3)
; MsgBox % description(3)
; MsgBox % image(3)
; MsgBox % location(3)
; MsgBox % phone(3)

; msgbox % email()
; msgbox % password()
; msgbox % timing()

; Gosub, read

; read:
; 	NR=0
; 	loop,2
; 	{
; 		NR++
; 		loop,5
; 			msgbox,4096,%A_INDEX% / %NR%, % arr[NR,A_INDEX]
		
; 	}
; return


