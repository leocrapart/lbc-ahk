; pos tooltip
CoordMode, Mouse, Screen
SetTimer, posTooltip, 10
return

posTooltip:
	MouseGetPos, x, y
	ToolTip, % "x: " x "`ny: " y
return
; ----------

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


^r::
	paste("password of mine")
	return

ESC::ExitApp


