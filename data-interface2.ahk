#Include %A_ScriptDir%\xlsx.ahk

arr := ExcelToArray("data3.xlsx")

title(x)
{
	global arr
	return arr[x+1, 1]
}

description(x)
{
	global arr
	return arr[x+1, 2]
}

image(x)
{
	global arr
	return arr[x+1, 3]
}

location(x)
{
	global arr
	return arr[x+1, 4]
}

phone1()
{
	global arr
	return arr[2, 7]
}

phone2()
{
	global arr
	return arr[2, 8]
}


phone(x)
{
	global arr
	phoneId := arr[x+1, 5]
	if (phoneId = 1)
	{
		return phone1()
	}
	else if (phoneId = 2)
	{
		return phone2()
	}
	return
}


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


