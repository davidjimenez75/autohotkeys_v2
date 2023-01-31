#LButton:: Send "^#{Left}"		; Win + Right mouse Click = Prev. virtual desktop

#MButton:: Send "#{Tab}"		; Win + Middle mouse Click = Show virtual desktops

#RButton:: Send "^#{Right}"		; Win + Right mouse Click = Next virtual desktop


; --------------------------------
; Scroll Lock = Mute for X seconds
; --------------------------------
ScrollLock::{
	Send "{Volume_Mute}"
	Sleep 60*1000
	Send "{Volume_Mute}"
}

Pause:: Send "{Media_Play_Pause}" ; Pause = Multimedia Pause

NumpadDiv:: Send "{Media_Prev}" ; Pause = Multimedia Pause

NumpadMult:: Send "{Media_Next}" ; Pause = Multimedia Pause

NumpadAdd:: Send "{Volume_Up}" ; Pause = Multimedia Pause

NumpadSub:: Send "{Volume_Down}" ; Pause = Multimedia Pause