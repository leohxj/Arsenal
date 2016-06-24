; Fast open application
; List custom keymap
; customkey: Meta(win)
;-----------------------------------------------------
; | q: zeal       | w: sublime    | e: ConEmu64   |
; | a:            | s:            | d:            |
; | z:            | x: 1passowrd  | c:            | 
;-----------------------------------------------------

#q::
DetectHiddenWindows, on
IfWinNotExist ahk_exe zeal.exe
Run "D:\Program Files (x86)\Zeal\zeal.exe"
Else
IfWinNotActive ahk_exe zeal.exe
WinActivate
Else
WinMinimize
Return

#w::
DetectHiddenWindows, on
IfWinNotExist ahk_exe sublime_text.exe
Run "D:\Program Files (x86)\Sublime Text 3\sublime_text.exe"
Else
IfWinNotActive ahk_exe sublime_text.exe
WinActivate
Else
WinMinimize
Return

#e::
DetectHiddenWindows, on
IfWinNotExist ahk_class VirtualConsoleClass
Run "D:\Program Files (x86)\ConEmu\ConEmu64.exe", e:
Else
IfWinNotActive ahk_class VirtualConsoleClass
WinActivate
Else
WinMinimize
Return

#x::
DetectHiddenWindows, on
IfWinNotExist ahk_class TFrm1pMain
Run "D:\Program Files (x86)\1Password 4\1Password.exe"
Else
IfWinNotActive ahk_class TFrm1pMain
WinActivate
Else
WinMinimize
Return
