; File:        lotus-smartcenter-close.ahk
; Author:      Julian Orchard <marketing@wessexlifts.co.uk>
; Tag Added:   2022-10-24
; Description: Close the application 'Lotus SmartCenter' when it opens. Should
;              only need doing once on start-up.

#Persistent

SetTimer, CheckBar, 500
CheckBar:
  IfWinExist, SmartCenter
  {
    WinKill, SmartCenter
    ExitApp
  }
Return
