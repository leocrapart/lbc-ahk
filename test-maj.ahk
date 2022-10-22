#Include %A_ScriptDir%\data-interface.ahk

paste(text) {
	clipboard = %text%
	send ^v
	return
}

^r::
	phoneTest(phone(1))
	return


phoneTest(phone) {
	paste(phone)
	return
}
return


concatenate(s1, s2) {
	return, s1 s2
}