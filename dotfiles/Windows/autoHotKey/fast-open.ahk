; Fast open application
; List custom keymap
;-----------------------------
; w: sublime
; q: zeal
; z: wizNote
;-----------------------------


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

#z::
DetectHiddenWindows, on
IfWinNotExist ahk_class WizNoteMainFrame
Run "D:\Program Files (x86)\WizNote\Wiz.exe"
Else
IfWinNotActive ahk_class WizNoteMainFrame
WinActivate
Else
WinMinimize
Return