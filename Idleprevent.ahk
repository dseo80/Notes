#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Persistent

SetTimer, CheckIdle, 60000    ; 60 sec / 1 min
Return

CheckIdle:
If (A_TimeIdle > 100000)
{
    Send {RShift}
}

^!Up::WinMaximize, A
^!Down::WinRestore, A

^SPACE::  Winset, Alwaysontop, , A
