/*#NoEnv	; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn	; Enable warnings to assist with detecting common errors.
SendMode Input	; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%	; Ensures a consistent starting directory.

#KeyHistory 0

SetCapsLockState, Off
SetNumLockState, Off

Space::Space	; For a single Space symbol. For automatic Space repeat - use Shift+Space (or Ctrl+Space)
sc15D::sc15D
*/

; -----------------------------------------------------------------
; Cursor control keys
; -----------------------------------------------------------------

Space & sc052::Send {Numpad0}
sc15D & sc052::Send {Ins}
*sc052::
if (GetKeyState("NumLock","T")) {
	Send {Blind}{Numpad0}
} else {
	Send {Blind}{Ins}
}
return

Space & sc053::Send {NumpadDot}
sc15D & sc053::Send {Del}
*sc053::
if (GetKeyState("NumLock","T")) {
	Send {Blind}{NumpadDot}
} else {
	Send {Blind}{Del}
}
return

Space & sc04F::Send {Numpad1}
sc15D & sc04F::Send ^c
*sc04F::
if (GetKeyState("NumLock","T")) {
	Send {Blind}{Numpad1}
} else {
	Send ^c
}
return

Space & sc050::Send {Numpad2}
sc15D & sc050::Send ^v
*sc050::
if (GetKeyState("NumLock","T")) {
	Send {Blind}{Numpad2}
} else {
	Send ^v
}
return

Space & sc051::Send {Numpad3}
sc15D & sc051::Send ^x
*sc051::
if (GetKeyState("NumLock","T")) {
	Send {Blind}{Numpad3}
} else {
	Send ^x
}
return

Space & sc04B::Send {Numpad4}
sc15D & sc04B::Send {Left}
*sc04B::
if (GetKeyState("NumLock","T")) {
	Send {Blind}{Numpad4}
} else {
	Send {Blind}{Left}
}
return

Space & sc04C::Send {Numpad5}
sc15D & sc04C::Send {Down}
*sc04C::
if (GetKeyState("NumLock","T")) {
	Send {Blind}{Numpad5}
} else {
	Send {Blind}{Down}
}
return

Space & sc04D::Send {Numpad6}
sc15D & sc04D::Send {Right}
*sc04D::
if (GetKeyState("NumLock","T")) {
	Send {Blind}{Numpad6}
} else {
	Send {Blind}{Right}
}
return

Space & sc047::Send {Numpad7}
sc15D & sc047::Send {Home}
*sc047::
if (GetKeyState("NumLock","T")) {
	Send {Blind}{Numpad7}
} else {
	Send {Blind}{Home}
}
return

Space & sc048::Send {Numpad8}
sc15D & sc048::Send {Up}
*sc048::
if (GetKeyState("NumLock","T")) {
	Send {Blind}{Numpad8}
} else {
	Send {Blind}{Up}
}
return

Space & sc049::Send {Numpad9}
sc15D & sc049::Send {End}
*sc049::
if (GetKeyState("NumLock","T")) {
	Send {Blind}{Numpad9}
} else {
	Send {Blind}{End}
}
return

Space & sc135::Send {NumpadDiv}
sc15D & sc135::Send {PrintScreen}
*sc135::
if (GetKeyState("NumLock","T")) {
	Send {Blind}{NumpadDiv}
} else {
	Send {Blind}{PrintScreen}
}
return

Space & sc037::Send {NumpadMult}
sc15D & sc037::Send {ScrollLock}
*sc037::
if (GetKeyState("NumLock","T")) {
	Send {Blind}{NumpadMult}
} else {
	Send {Blind}{ScrollLock}
}
return

Space & sc04A::Send {NumpadSub}
sc15D & sc04A::Send {Pause}
*sc04A::
if (GetKeyState("NumLock","T")) {
	Send {Blind}{NumpadSub}
} else {
	Send {Blind}{Pause}
}
return

Space & sc04E::Send {NumpadAdd}
sc15D & sc04E::Send {PgUp}
*sc04E::
if (GetKeyState("NumLock","T")) {
	Send {Blind}{NumpadAdd}
} else {
	Send {Blind}{PgUp}
}
return

Space & sc11C::Send {NumpadEnter}
sc15D & sc11C::Send {PgDn}
*sc11C::
if (GetKeyState("NumLock","T")) {
	Send {Blind}{NumpadEnter}
} else {
	Send {Blind}{PgDn}
}
return
