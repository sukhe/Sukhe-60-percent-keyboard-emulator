#If (GetKeyState("NumLock","T") and WithNumpad = false)

LControl & RAlt::
RAlt::
<^>!::
fsend("{Space}")
return

; ----------------------------------------------------------------
; Numeric keypad when the NumLock status is "On"
; ----------------------------------------------------------------

*Space::Send {Blind}{Numpad0}
*m::Send {Blind}{Numpad1}
*sc033::Send {Blind}{Numpad2}	; ,<
*sc034::Send {Blind}{Numpad3}	; .>
*j::Send {Blind}{Numpad4}
*k::Send {Blind}{Numpad5}
*l::Send {Blind}{Numpad6}
*u::Send {Blind}{Numpad7}
*i::Send {Blind}{Numpad8}
*o::Send {Blind}{Numpad9}
*n::Send {Blind}{NumpadDiv}
*h::Send {Blind}{NumpadMult}
*p::Send {Blind}{NumpadSub}
*sc027::Send {Blind}{NumpadAdd}	; ;:
*Enter::Send {Blind}{NumpadEnter}	; Enter

*sc035::
if (NumpadDotAlwaysDot = true) {
	Send {Raw}.
} else {
	Send {Blind}{NumpadDot}
}
return

; ----------------------------------------------------------------
; Entering Hex Numbers when the NumLock status is "On"
; ----------------------------------------------------------------

*v::
if (HexNumbersUpper = true) {
	SendRaw A
} else {
	SendRaw a
}
return

*b::
if (HexNumbersUpper = true) {
	SendRaw B
} else {
	SendRaw b
}
return

*f::
if (HexNumbersUpper = true) {
	SendRaw C
} else {
	SendRaw c
}
return

*g::
if (HexNumbersUpper = true) {
	SendRaw D
} else {
	SendRaw d
}
return

*r::
if (HexNumbersUpper = true) {
	SendRaw E
} else {
	SendRaw e
}
return

*t::
if (HexNumbersUpper = true) {
	SendRaw F
} else {
	SendRaw f
}
return

; ----------------------------------------------------------------
; Entering Symbols when the NumLock status is "On"
; ----------------------------------------------------------------

*q::SendRaw .
*w::SendRaw '
*e::Send {Raw};
*a::Send {Raw},
*s::Send {Raw}"
*d::SendRaw :
*z::SendRaw <
*x::SendRaw >
*c::SendRaw ?
*sc028::Send {Raw}=	; '"
*sc01A::Send {Blind}{[}
*sc01B::Send {Blind}{]}


#If
