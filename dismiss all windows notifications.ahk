#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;BASIC SCRIPT PROPERTIES
#NoTrayIcon ; uncomment for no tray icon
#SingleInstance, Force ;only one of its kind is running at once
~<^<+q::Suspend ;Lctrl+Lshift will toggle suspend all scripts
~<^<+<!q::ExitApp ;Lctrl+Lshift+Lalt will exit all scripts
~<^4::Reload ;lctrl + 4 will reload all running scripts

<^<+d::
send, #a
sleep, 100
Send, {SHIFTDOWN}{TAB}{TAB}{SHIFTUP}
sleep, 200
send, {Enter}
sleep, 600
send, {ESCAPE}
return