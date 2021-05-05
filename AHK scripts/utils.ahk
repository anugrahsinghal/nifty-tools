!u::
Send, %USERNAME%
return

#o::
Send, %SECURE_PASS%
return

#f::
Send, %IP%
return

#s::
Run, C:\Users\%USERPROFILE%\Pictures\Screenshots
return


!s::
Send, %VM_USER%
return

!a::
Send, %VM_PASS%
return

!d::
EnvGet, OutputVar, UTX_PASS
SendRaw, %OutputVar%
return

!]::
Send, %VM_PASS_2%
return

;Useful for java code
!o::
Send, System.out.println();
return

;Override default win + e behaviour
#e::
Run, C:\Projects
return

;Open Proxy Settings
#p::
Run, ms-settings:network-proxy

!w::
Send, %VM_USER_2%
return


;!PrintScreen::
;return

;VS CODE enable dbl shift
;lastShift := 0
;$Shift::
;if ((A_TickCount - lastShift) <= 250)
;Send ^+p
;else
;Send {Shift}
;lastShift := A_TickCount
;return

; -------------------------------------------------------------------------
; Cntr-L should clear screen on CMD like on linux
; -------------------------------------------------------------------------
#IfWinActive ahk_class ConsoleWindowClass
^L::
SendInput cls{Escape}
SendInput cls{Enter}
return

#IfWinActive
; -------------------------------------------------------------------------
;VS CODE enable dbl shift for intellij like behaviour
; -------------------------------------------------------------------------
#IfWinActive, ahk_exe Code.exe
lastShift := 0
$Shift::
if ((A_TickCount - lastShift) <= 250)
Send ^+p
else
Send {Shift}
lastShift := A_TickCount
return
#IfWinActive