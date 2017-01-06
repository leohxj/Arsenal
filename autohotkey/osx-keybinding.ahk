;-----------------------------------------
; Mac keyboard to Windows Key Mappings
;=========================================

; --------------------------------------------------------------
; NOTES
; --------------------------------------------------------------
; ! = ALT
; ^ = CTRL
; + = SHIFT
; # = WIN
;===============================================================



; --------------------------------------------------------------
; Programs which use Widnows key map
; --------------------------------------------------------------

GroupAdd, Terminal, ahk_class Emacs
; GroupAdd, Terminal, ahk_class SunAwtDialog
; GroupAdd, Terminal, ahk_class SunAwtFrame

GroupAdd, Jetbrains, ahk_class SunAwtDialog
GroupAdd, Jetbrains, ahk_class SunAwtFrame

InTerminal() {
	return WinActive("ahk_group Terminal")
}

InJetbrainsIDE() {
	return WinActive("ahk_group Jetbrains")
}

InSecureCRT() {
	return WinActive("ahk_class VanDyke Software - SecureCRT")
}
;===============================================================

; --------------------------------------------------------------
; map Caps to Ctrl
; --------------------------------------------------------------
SetCapsLockState , AlwaysOff

Capslock::
   Gui, 93:+Owner ; prevent display of taskbar button
   Gui, 93:Show, y-99999 NA, Enable nav-hotkeys: emacs
   Send {LCtrl Down}
   KeyWait, Capslock ; wait until the Capslock button is released
   Gui, 93:Cancel
   Send, {LCtrl Up}
Return

#IfWinExist, Enable nav-hotkeys: emacs

;; mock emacs move
;; caps+a => begin of line
*a::
GetKeyState, state, Shift
if state = D
    Send +^a
else
    If InTerminal()
        Send ^a
    Else
        Send {Blind}{LCtrl Up}{Home}{LCtrl Down}
Return

;; caps+e => end of line
*e::
GetKeyState, state, Shift
if state = D
    Send +^e
else
    If InTerminal()
        Send ^e
    Else
        Send {Blind}{LCtrl Up}{End}{LCtrl Down}
Return

;; caps+b => left(back)
*b::
GetKeyState, state, Shift
if state = D
    Send +^b
else
    If InTerminal()
        Send ^b
    Else
        Send {Blind}{LCtrl Up}{Left}{LCtrl Down}
Return

;; caps+f => right(forward)
*f::
GetKeyState, state, Shift
if state = D
    Send +^f
else
    If InTerminal()
        Send ^f
    Else
        Send {Blind}{LCtrl Up}{Right}{LCtrl Down}
Return

;; caps+n => down(next)
*n::
GetKeyState, state, Shift
if state = D
    Send +^n
else
    If InTerminal()
        Send ^n
    Else
        Send {Blind}{LCtrl Up}{Down}{LCtrl Down}
Return

;; caps+p => up(previous)
*p::
GetKeyState, state, Shift
if state = D
    Send +^p
else
    If InTerminal()
        Send ^p
    Else
        Send {Blind}{LCtrl Up}{Up}{LCtrl Down}
Return

;; caps + alt + p => ctrl + alt + p
*!p::^!p

;; caps + [ => ecs (more usefull in vim-mode)
*[::
GetKeyState, state, Shift
if state = D
    Send +^[
else
    If InTerminal()
        Send ^[
    Else
        Send {Blind}{LCtrl Up}{Esc}{LCtrl Down}
Return

#IfWinExist, ; end context-sensitive block
;===============================================================

; --------------------------------------------------------------
; OS X system shortcuts
; using SharpKeys swip alt and win
; so we can mock win + {key} => cmd + {key}
; --------------------------------------------------------------

;; disable win
LWin::
RWin::
Return
#Up::Send {LWin}

; Win + C => ctrl+c(copy)
WinC() {
	Send ^c
}
<#c::WinC()

; Win + V => ctrl + v (paster)
WinV() {
	Send ^v
}
<#v::WinV()

; Win + X => ctrl + x (cut)
WinX() {
	Send ^x
}
<#x::WinX()

; Win + z => ctrl + z (undo)
WinZ() {
	Send ^z
}
<#z::WinZ()


; Win + F => ctrl + f (find)
WinF() {
	Send ^f
}
<#f::WinF()

; Win + A => ctrl + a (sellect all)
WinA() {
	Send ^a
}
<#a::WinA()

; Win + N => ctrl + n (create new file)
WinN() {
	Send ^n
}
<#n::WinN()

; Win + T => ctrl + t (create new tab)
WinT() {
	Send ^t
}
<#t::WinT()

; Win + W => ctrl + w (close a tab)
WinW() {
	Send ^w
}
<#w::WinW()

; Win + R => ctrl + r (refush)
WinR() {
	Send ^r
}
<#r::WinR()

; Win + S => ctrl + s (save)
WinS() {
	Send ^s
}
<#s::WinS()

; win + e => ctrl + e (in IDEA, open recent files)
winE() {
	Send ^e
}
<#e::WinE()

;; win + space => ctrl + space (change differ input source)
#Space::Send ^{Space}

;; win + tab => alt + tab (switch apps)
LWin & Tab::AltTab

; Win + ` => alt + ~ (switch windows in one app, base on VistaSwitcher)
WinPonit() {
    Send !~
}
<#`::WinPonit()

;; caps + win + {key} => ctrl + alt + {key}
#^x::Send !^x
#^c::Send !^c
#^z::Send !^z
#^a::Send !^a
#^s::Send !^s

;; shift + win(alt) + key => shift + alt + {key}
#+v::Send !+v

;===============================================================
