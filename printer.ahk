; File:        printer.ahk
; Author:      Julian Orchard <marketing@wessexlifts.co.uk>
; Tag Added:   2022-02-10
; Description: Automatically navigates to send printed document to
;              the users mailbox at the main office printer

#Persistent

; Read Print Number File
FileRead, print_no, %A_ScriptDir%\print_number.txt

; Every 0.5 seconds, check if window active
SetTimer, CheckWin, 500
CheckWin:
	IfWinActive, Store Details
	{
		Send, {Tab}
		Sleep, 500
		Send, %print_no%
		Sleep, 500
		Send, {Enter}
	}
Return
