#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


;DESCRIPTION
/*
Written By: Abdur Rahman
Date Started: 6/20/2020
Last Edited: 6/20/2020
Purpose: Runs new incognito window of chrome from anywhere.
*/

;BASIC SCRIPT PROPERTIES
;#NoTrayIcon ; uncomment for no tray icon
#SingleInstance, Force ;only one of its kind is running at once
~<^<+q::Suspend ;Lctrl+Lshift will toggle suspend all scripts
~<^<+<!q::ExitApp ;Lctrl+Lshift+Lalt will exit all scripts
~<^4::Reload ;lctrl + 4 will reload all running scripts


;Lctrl+Lshift+n runs new incognito window
<^<+n::
Input, userKey, I O L1
If userKey = n
{
	Run chrome.exe -incognito
	return
}
else if userkey = g
{
	Run chrome.exe https://mail.google.com/  --new-window -incognito
	return
}
else if userkey = y
{
	Run chrome.exe https://www.youtube.com/  --new-window -incognito
	return
}
else if userkey = s
{
	Run chrome.exe https://stackoverflow.com/questions  --new-window -incognito
	return
}
return

