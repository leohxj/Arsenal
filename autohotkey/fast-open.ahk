; Fast open application using alt on Windows
; List custom keymap
; customkey: Meta(win)
;-----------------------------------------------------
; | q: zeal       | w: sublime    | e: ConEmu64   |
; | a:            | s:            | d:            |
; | z:            | x:            | c:            |
;-----------------------------------------------------

!q::
DetectHiddenWindows, on
IfWinNotExist ahk_class Qt5QWindowIcon ahk_exe zeal.exe
Run "D:\Program Files (x86)\Zeal\zeal.exe"
Else
IfWinNotActive ahk_class Qt5QWindowIcon ahk_exe zeal.exe
WinActivate
Else
WinMinimize
Return

!w::
DetectHiddenWindows, on
IfWinNotExist ahk_class Chrome_WidgetWin_1 ahk_exe atom.exe
Run "C:\Users\15050107\AppData\Local\atom\bin\atom.cmd"
Else
IfWinNotActive ahk_class Chrome_WidgetWin_1 ahk_exe atom.exe
WinActivate
Else
WinMinimize
Return

!e::
DetectHiddenWindows, on
IfWinNotExist ahk_class VirtualConsoleClass
Run "D:\Program Files (x86)\ConEmu\ConEmu64.exe", e:
Else
IfWinNotActive ahk_class VirtualConsoleClass
WinActivate
Else
WinMinimize
Return

;-----------------------------------------------------
;; alt+Num -> win+Num

!1::Send {LWin down}{1}{LWin up}
!2::Send {LWin down}{2}{LWin up}
!3::Send {LWin down}{3}{LWin up}
!4::Send {LWin down}{4}{LWin up}

;-----------------------------------------------------