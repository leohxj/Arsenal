;Notes: #==win !==Alt  ^==Ctr  +==shift

SetCapsLockState, AlwaysOff             ; 设置大写锁定为永远为关闭状态（本脚未触发时不会起作用）

CapsLock::
CapsLock2:=CapsLock:=1
KeyWait, CapsLock
if CapsLock2
        SendInput,!{s}    ; 替换快捷键- alt + S
CapsLock2:=CapsLock:=""
Return


;=====================================================================o
;                       CapsLock Switcher:                           ;|
;---------------------------------o-----------------------------------o
;                    CapsLock + ` | {CapsLock}                       ;|
;---------------------------------o-----------------------------------o
CapsLock & `::                                                       ;|
GetKeyState, CapsLockState, CapsLock, T                              ;|
if CapsLockState = D                                                 ;|
    SetCapsLockState, AlwaysOff                                      ;|
else                                                                 ;|
    SetCapsLockState, AlwaysOn                                       ;|
KeyWait, ``                                                          ;|
return                                                               ;|
;---------------------------------------------------------------------o
