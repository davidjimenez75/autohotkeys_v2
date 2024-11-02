; NAME = autohotkeys_v2 
; VERSION = 2024.11.02.0928
; SOURCE = https://github.com/davidjimenez75/autohotkeys_v2
; AUTOHOTKEY V2 - DOCUMENTATION = https://www.autohotkey.com/docs/v2/
;
; NOTES:
;
;  ^ for Ctrl
;  ! for Alt 
;  + for Shift


; ----------------------------------------------
; Change Virtual desktops with Win key + Mouse
; ----------------------------------------------
#LButton:: Send "^#{Left}"		; Win + Right mouse Click = Prev. virtual desktop
#MButton:: Send "#{Tab}"		; Win + Middle mouse Click = Show virtual desktops
#RButton:: Send "^#{Right}"		; Win + Right mouse Click = Next virtual desktop


; ----------------------------------------
; Scroll Lock = Mute audio for XX seconds
; ----------------------------------------
ScrollLock::{
	Send "{Volume_Mute}"
	Sleep 60*1000
	Send "{Volume_Mute}"
}


; -------------------------------------
; Emulate multimedia keys with numpad
; -------------------------------------
Pause:: Send "{Media_Play_Pause}" ; Pause = Multimedia Pause
^NumpadDiv:: Send "{Media_Prev}" ; Ctrl + NumpadDiv = Prev 
^NumpadMult:: Send "{Media_Next}" ; Ctrl + NumpadMult = Next
NumpadAdd:: Send "{Volume_Up}" ; NumpadAdd = Volume up
NumpadSub:: Send "{Volume_Down}" ; NumpadSub = Volume down


; ------------------------------------------------
; Create folder with current timestamp on desktop
; ------------------------------------------------
#ScrollLock::{
	now := FormatTime(,"yyyy-MM-dd--HHmmss--")
	DirCreate (A_Desktop "\" now)
	; MsgBox "Creada carpeta: " A_Desktop "\" now
	FileAppend "# ", A_Desktop "\" now "\HEADER.md"
}

; ------------------------------------------------
; Minimice actual windows on double tap on Esc key
; ------------------------------------------------
~Esc::
{
    if (A_PriorHotkey == "~Esc" and A_TimeSincePriorHotkey < 400)
    {
    ; MsgBox "You double-pressed the Esc key."
	WinMinimize "A" 
    }
}

; -----------------------------------------------------
; Microsoft Edge browser play/pause text reading voice 
; -----------------------------------------------------
; Pause:: Send '^+u' ; Play/Pause Microsoft Edge voice over



; -----------------------------------------------------
; Restore the current selected folder icons
; -----------------------------------------------------
+Pause::  ; Ctrl + Pause
{
    Send "{AppsKey}"  ; Right-click menu
    Sleep 10
    Send "{p}"  ; To Propiedades
    Sleep 10
    Send "^{Tab 4}"  ; ^ es el símbolo para Ctrl y envia 4 veces Ctrl + tab
    Sleep 10
    Send "{R}"  ; Restaurar predeterminado
    Sleep 10
    Send "{Enter}"  ; Click to Restaurar predeterminado
}