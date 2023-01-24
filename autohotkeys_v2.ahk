#LButton:: Send "^#{Left}"		; Win + Right mouse Click = Prev. virtual desktop

#MButton:: Send "#{Tab}"		; Win + Middle mouse Click = Show virtual desktops

#RButton:: Send "^#{Right}"		; Win + Right mouse Click = Next virtual desktop

; Scroll Lock = Mute for X seconds
ScrollLock::{
	Send "{Volume_Mute}"
	Sleep 30*1000
	Send "{Volume_Mute}"
}
