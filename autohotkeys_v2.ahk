; NAME = autohotkeys_v2 
; VERSION = 2023-12-03-0856
; SOURCE = https://github.com/davidjimenez75/autohotkeys_v2
; AUTOHOTKEY V2 - DOCUMENTATION = https://www.autohotkey.com/docs/v2/


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
#NumpadDiv:: Send "{Media_Prev}" ; NumpadDiv = Prev 
#NumpadMult:: Send "{Media_Next}" ; NumpadMult = Next
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




