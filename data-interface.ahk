#Include %A_ScriptDir%\csv.ahk

CSV_Load("data.csv","data")

title(x)
{
	return CSV_ReadCell("data", x+1, 1)
}

description(x)
{
	return CSV_ReadCell("data", x+1, 2)
}

image(x)
{
	return CSV_ReadCell("data", x+1, 3)
}

location(x)
{
	return CSV_ReadCell("data", x+1, 4)
}

phone(x)
{
	return CSV_ReadCell("data", x+1, 5)
}

; ;tests
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

; MsgBox % title(10)
; MsgBox % description(10)
; MsgBox % image(10)
; MsgBox % location(10)
; MsgBox % phone(10)


