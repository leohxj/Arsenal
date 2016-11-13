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

GroupAdd, Terminal, ahk_class mintty
GroupAdd, Terminal, ahk_class Vim
GroupAdd, Terminal, ahk_class PuTTY
GroupAdd, Terminal, ahk_class VanDyke Software - SecureCRT
GroupAdd, Terminal, ahk_class VirtualConsoleClass
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
*a::Send {Blind}{LCtrl Up}{Home}{LCtrl Down}
*e::Send {Blind}{LCtrl Up}{End}{LCtrl Down}
*b::Send {Blind}{LCtrl Up}{Left}{LCtrl Down}
*f::Send {Blind}{LCtrl Up}{Right}{LCtrl Down}
*n::Send {Blind}{LCtrl Up}{Down}{LCtrl Down}
*p::Send {Blind}{LCtrl Up}{Up}{LCtrl Down}

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