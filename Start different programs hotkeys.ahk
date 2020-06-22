#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;BASIC SCRIPT PROPERTIES
;#NoTrayIcon ; uncomment for no tray icon
#SingleInstance, Force ;only one of its kind is running at once
~<^<+q::Suspend ;Lctrl+Lshift will toggle suspend all scripts
~<^<+<!q::ExitApp ;Lctrl+Lshift+Lalt will exit all scripts
~<^4::Reload ;lctrl + 4 will reload all running scripts





<^n::
Run explorer.exe
return


<^<+p::
Input, userKey, I O L3
If userKey = int
{
	Run D:\JetBrains\Toolbox\apps\IDEA-U\ch-0\201.7846.76\bin\idea64.exe
	return
}
else If userKey = ste
{
    Run C:\Program Files (x86)\Steam\Steam.exe
    return
}
else If userKey = tel
{
    Run C:\Users\Abdur\AppData\Roaming\Telegram Desktop\Telegram.exe
    return
}
else If userKey = not
{
    Run C:\WINDOWS\system32\notepad.exe
    return
}
else If userKey = dis
{
    Run C:\Users\Abdur\AppData\Local\Discord\Update.exe --processStart Discord.exe
    return
}
else If userKey = dow
{
    Run explorer.exe C:\Users\Abdur\Downloads
    return
}
else If userKey = ddr
{
    Run explorer.exe D:\
    return
}
else If userKey = cdr
{
    Run explorer.exe C:\
    return
}
else
{
    return
}
