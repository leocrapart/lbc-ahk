#Include %A_ScriptDir%\xlsx.ahk

#Persistent         
SetTimer Ticker, 500 


arr := ExcelToArray("time.xlsx")

start1Hour() {
	global arr
	return arr[2, 2]
}

start1Min() {
	global arr
	return arr[2, 3]
}


start2Hour() {
	global arr
	return arr[3, 2]
}

start2Min() {
	global arr
	return arr[3, 3]
}


time() {
	msgbox % A_Hour " " A_Min
	return	
}

time1() {
	msgbox % start1Hour() " " start1Min()
}

time2() {
	msgbox % start2Hour() " " start2Min()
}


isStart1Time() {
	return (A_Hour == start1Hour()) && (A_Min == start1Min()) 
}

isStart2Time() {
	return (A_Hour == start2Hour()) && (A_Min == start2Min())
}

1started := false
2started := false

start1 := false
start2 := false

Ticker:
	global 1started
	global 2started
  if isStart1Time() && (1started == false) {
    start1 := true
  }
  if isStart2Time() && (2started == false)  {
    start2 := true
  }

  if start1 {
  	start1 := false
  	1started := true
  	gogogo1()
  }

  if start2 {
  	start2 := false
  	2started := true
  	gogogo2()
  }

return		


gogogo1() {
	msgbox gogogo1
}

gogogo2() {
	msgbox gogogo2
}



ESC::ExitApp
