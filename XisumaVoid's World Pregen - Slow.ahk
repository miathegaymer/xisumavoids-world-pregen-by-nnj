;====================================================================================================
;  AHK setting
;====================================================================================================
#NoEnv
setBatchLines -1
SetTitleMatchMode 2
#SingleInstance off
#Persistent
SetWorkingDir %A_ScriptDir%
SetKeyDelay, 120

;====================================================================================================
;Shortcuts
;====================================================================================================
Hotkey  !^q,	chunkbuilder		; Pressing ctrl + alt + q will start function

return

;====================================================================================================
;The check builder function
;====================================================================================================
chunkbuilder:
{
	
	tpDelay := 2500 ;10,000 = 10 seconds
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
			Send /tp @p ~ ~ ~ 270 20{Enter}
			Sleep tpDelay
			Send /tp @p ~240 ~ ~{Enter}
		}
		Sleep tpDelay
		Send /tp @p -2880 192 ~240{Enter}
		Sleep tpDelay
	}
	Send /tellraw @p "\u00A76Script ran successfully! You may now exit the program from your Taskbar's Hidden Icons menu."
}
;#Needs Delays Between each teleport
;#Need start button or big pause before it starts

F9::Pause
F10::Reload

ESC:
Send /tp @p 0 200 0{Enter}
Send /tellraw @p "\u00A7cScript was Cancelled! Reason: ESC Key was pressed! If you'd like to run the script again, press CTRL + Alt + Q."
ExitApp
return