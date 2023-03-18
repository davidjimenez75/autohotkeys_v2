﻿; NAME = autohotkeys_v2 
; SOURCE = https://github.com/davidjimenez75/autohotkeys_v2
; VERSION = 2023-03-18

; ----------------------------------------------
; Change Virtual desktops with Win key + Mouse
; ----------------------------------------------
#LButton:: Send "^#{Left}"		; Win + Right mouse Click = Prev. virtual desktop
#MButton:: Send "#{Tab}"		; Win + Middle mouse Click = Show virtual desktops
#RButton:: Send "^#{Right}"		; Win + Right mouse Click = Next virtual desktop

; ---------------------------------
; Scroll Lock = Mute for X seconds
; ---------------------------------
ScrollLock::{
	Send "{Volume_Mute}"
	Sleep 60*1000
	Send "{Volume_Mute}"
}

; -------------------------------------
; Emulate multimedia keys with numpad
; -------------------------------------
Pause:: Send "{Media_Play_Pause}" ; Pause = Multimedia Pause
NumpadDiv:: Send "{Media_Prev}" ; NumpadDiv = Prev 
NumpadMult:: Send "{Media_Next}" ; NumpadMult = Next
NumpadAdd:: Send "{Volume_Up}" ; NumpadAdd = Volume up
NumpadSub:: Send "{Volume_Down}" ; NumpadSub = Volume down