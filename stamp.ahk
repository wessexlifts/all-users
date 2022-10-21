; File:        stamp.ahk
; Author:      Julian Orchard <marketing@wessexlifts.co.uk>
; Tag Added:   2022-02-10
; Description: Inserts a Timestamp with Alt+F6 by default

; Read File For Initials
FileRead, initial, %A_ScriptDir%\initials.txt

; Bind to Alt+F6 by Default
!F6::
	FormatTime, time, A_now, dd/MM/yyyy hh:mm tt
	Send %time% ~ %initial% {backspace 3}: {Enter}
Return
