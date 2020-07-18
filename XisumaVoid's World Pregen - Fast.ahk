;====================================================================================================
;  AHK setting
;====================================================================================================
#NoEnv
setBatchLines -1
SetTitleMatchMode 2
#SingleInstance off
#Persistent
SetWorkingDir %A_ScriptDir%
SetKeyDelay, 70

;====================================================================================================
;Shortcuts
;====================================================================================================
Hotkey  !^f,	chunkbuilder		; Pressing ctrl + alt + f will start function

return

;====================================================================================================
;The check builder function
;====================================================================================================
chunkbuilder:
{
	
	tpDelay := 1200 ;10,000 = 10 seconds
	Sleep tpDelay
	Send /tp @p -2880 192 -2880{Enter}
	Loop, 24
	{
		Loop, 24
		{
			Sleep tpDelay
			Send /tp @p ~ ~ ~ -90 20{Enter}
			Sleep tpDelay
			Send /tp @p ~ ~ ~ 0 20{Enter}
			Sleep tpDelay
			Send /tp @p ~ ~ ~ 90 20{Enter}
			Sleep tpDelay
			Send /tp @p ~ ~ ~ 180 20{Enter}
			Sleep tpDelay
			Send /tp @p ~240 ~ ~{Enter}
		}
		Sleep tpDelay
		Send /tp @p -2880 192 ~240{Enter}
	}
}
;#Needs Delays Between each teleport
;#Need start button or big pause before it starts

F9::Pause
F10::Reload

ESC:
	Send /tp @p 0 200 0{Enter}
ExitApp
return