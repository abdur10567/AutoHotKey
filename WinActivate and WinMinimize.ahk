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


;maximizes Telegram, only works for stuff that is already open
<+t::
	WinActivate, Telegram ahk_class Qt5QWindowIcon