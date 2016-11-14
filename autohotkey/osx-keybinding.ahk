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
; --------------------------------------------------------------


; --------------------------------------------------------------
; Programs which use Widnows key map
; --------------------------------------------------------------

GroupAdd, Terminal, ahk_class Emacs

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
; --------------------------------------------------------------

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

*a::
If InTerminal()
Send ^a
Else
Send {Blind}{LCtrl Up}{Home}{LCtrl Down}
Return


*e::
If InTerminal()
Send ^e
Else
Send {Blind}{LCtrl Up}{End}{LCtrl Down}
Return

*b::
If InTerminal()
Send ^b
Else
Send {Blind}{LCtrl Up}{Left}{LCtrl Down}
Return


*f::
If InTerminal()
Send ^f
Else
Send {Blind}{LCtrl Up}{Right}{LCtrl Down}
Return

*n::
If InTerminal()
Send ^n
Else
Send {Blind}{LCtrl Up}{Down}{LCtrl Down}
Return

*p::
If InTerminal()
Send ^p
Else
Send {Blind}{LCtrl Up}{Up}{LCtrl Down}
Return

#IfWinExist, ; end context-sensitive block


; --------------------------------------------------------------

; --------------------------------------------------------------
; OS X system shortcuts
; --------------------------------------------------------------

LWin::
RWin::
Return
#Up::Send {LWin}

; Windows + C
WinC() {
	Send ^c
}
<#c::WinC()

; Windows + V
WinV() {
	Send ^v
}
<#v::WinV()

; Windows + X
WinX() {
	Send ^x
}
<#x::WinX()

; Windows + z
WinZ() {
	Send ^z
}
<#z::WinZ()


; Windows + F
WinF() {
	Send ^f
}
<#f::WinF()

; Windows + A
WinA() {
	Send ^a
}
<#a::WinA()

; Windows + N
WinN() {
	Send ^n
}
<#n::WinN()

; Windows + T
WinT() {
	Send ^t
}
<#t::WinT()

; Windows + W
WinW() {
	Send ^w
}
<#w::WinW()

; Windows + R
WinR() {
	Send ^r
}
<#r::WinR()

; Windows + S
WinS() {
	Send ^s
}
<#s::WinS()