#HotIf (GetKeyState("NumLock","T") and WithNumpad = false)

LControl & RAlt::
RAlt::
<^>!::
{
fsend("{Space}")
return
}

; ----------------------------------------------------------------
; Numeric keypad when the NumLock status is "On"
; ----------------------------------------------------------------

*Space::Send "{Blind}{Numpad0}"
*m::Send "{Blind}{Numpad1}"
*sc033::Send "{Blind}{Numpad2}"	; ,<
*sc034::Send "{Blind}{Numpad3}"	; .>
*j::Send "{Blind}{Numpad4}"
*k::Send "{Blind}{Numpad5}"
*l::Send "{Blind}{Numpad6}"
*u::Send "{Blind}{Numpad7}"
*i::Send "{Blind}{Numpad8}"
*o::Send "{Blind}{Numpad9}"
*n::Send "{Blind}{NumpadDiv}"
*h::Send "{Blind}{NumpadMult}"
*p::Send "{Blind}{NumpadSub}"
*sc027::Send "{Blind}{NumpadAdd}"	; ;:
*Enter::Send "{Blind}{NumpadEnter}"	; Enter

*sc035::
{
if (NumpadDotAlwaysDot = true) {
	Send "{Raw}."
} else {
	Send "{Blind}{NumpadDot}"
}
return
}

; ----------------------------------------------------------------
; Entering Hex Numbers when the NumLock status is "On"
; ----------------------------------------------------------------

*v::
{
if (HexNumbersUpper = true) {
	Send "{Raw}A"
} else {
	Send "{Raw}a"
}
return
}

*b::
{
if (HexNumbersUpper = true) {
	Send "{Raw}B"
} else {
	Send "{Raw}b"
}
return
}

*f::
{
if (HexNumbersUpper = true) {
	Send "{Raw}C"
} else {
	Send "{Raw}c"
}
return
}

*g::
{
if (HexNumbersUpper = true) {
	Send "{Raw}D"
} else {
	Send "{Raw}d"
}
return
}

*r::
{
if (HexNumbersUpper = true) {
	Send "{Raw}E"
} else {
	Send "{Raw}e"
}
return
}

*t::
{
if (HexNumbersUpper = true) {
	Send "{Raw}F"
} else {
	Send "{Raw}f"
}
return
}

; ----------------------------------------------------------------
; Entering Symbols when the NumLock status is "On"
; ----------------------------------------------------------------

*q::Send "{Raw}."
*w::Send "{Raw}'"
*e::Send "{Raw};"
*a::Send "{Raw},"
*s::Send '{Raw}"'
*d::Send "{Raw}:"
*z::Send "{Raw}<"
*x::Send "{Raw}>"
*c::Send "{Raw}?"
*sc028::Send "{Raw}="	; '"
*sc01A::Send "{Blind}{[}"
*sc01B::Send "{Blind}{]}"


#HotIf
