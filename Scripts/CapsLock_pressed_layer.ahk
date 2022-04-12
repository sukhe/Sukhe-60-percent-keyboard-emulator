; ----------------------------------------------------------------
; Entering numbers while pressing Caps Lock
; ----------------------------------------------------------------

; Send key combinations with saving and restoring CapsLock status

fcaps(x) {
	global EnterUnicode
	global unicodesymbol
	global Unicode
	If (A_PriorKey = "CapsLock" or A_PriorKey = "LShift" or A_PriorKey="RShift" or A_PriorKey = "LAlt") {
		SetCapsLockState % !GetKeyState("CapsLock", "T") 
	}
		fsend(x)
	SetCapsLockState Off
}

fhex(x) {
	global HexNumbersUpper
	global HexUpper, HexLower
	if (HexNumbersUpper) 
		if GetKeyState("Shift", "P") 
		fcaps(HexLower[x])
		else fcaps(HexUpper[x])
	else
		if GetKeyState("Shift", "P") 
		fcaps(HexUpper[x])
		else fcaps(HexLower[x])
}


#If GetKeyState("CapsLock", "P")


LControl & RAlt::
RAlt::
<^>!::
fsend("{Space}")
return

; >>>
; Additional HEX numbers over emulated numpad
+m::fcaps("{Raw}A")
+sc033::fcaps("{Raw}B")
+sc034::fcaps("{Raw}C")
+sc035::fcaps("{Raw}D")
+j::fcaps("{Raw}E")
+k::fcaps("{Raw}F")
+u::fcaps("{Raw}a")
+i::fcaps("{Raw}b")
+o::fcaps("{Raw}c")
+p::fcaps("{Raw}d")
+l::fcaps("{Raw}e")
+sc027::fcaps("{Raw}f")
; <<<
 
Space::fcaps("{Numpad0}")
m::fcaps("{Numpad1}")
sc033::fcaps("{Numpad2}")	; ,<
sc034::fcaps("{Numpad3}")	; .>
j::fcaps("{Numpad4}")
k::fcaps("{Numpad5}")
l::fcaps("{Numpad6}")
u::fcaps("{Numpad7}")
i::fcaps("{Numpad8}")
o::fcaps("{Numpad9}")
p::fcaps("{NumpadSub}")
n::fcaps("{NumpadDiv}")
h::fcaps("{NumpadMult}")
sc027::fcaps("{NumpadAdd}")	; ;:
sc028::fcaps("{=}")	; '"
Enter::fcaps("{NumpadEnter}")	; Enter
sc035::	; /?
	if (NumpadDotAlwaysDot = true) {
		fcaps("{Raw}.")
	} else {
		fcaps("{NumpadDot}")
	}
return

#If

; ----------------------------------------------------------------
; Entering Hex Numbers while pressing Caps Lock
; ----------------------------------------------------------------

#If GetKeyState("CapsLock", "P")

*v::
*b::
*f::
*g::
*r::
*t::
	fhex(A_ThisHotkey)
return

#If

; ----------------------------------------------------------------
; Entering Symbols while pressing Caps Lock
; ----------------------------------------------------------------

#If GetKeyState("CapsLock", "P")

*q::fcaps("{Raw}.")
*w::fcaps("{Raw}'")
*e::fcaps("{Raw};")

*a::fcaps("{Raw},")
*s::fcaps("{Raw}""")
*d::fcaps("{Raw}:")
*z::fcaps("{Raw}<")
*x::fcaps("{Raw}>")
*c::fcaps("{Raw}?")

; spaces
1::fcaps("{U+2003}")	; Em Space 
2::fcaps("{U+2002}")	; En Space
3::fcaps("{U+2004}")	; Three-Per-Em Space
4::fcaps("{U+2005}")	; Four-Per-Em Space
6::fcaps("{U+2006}")	; Six-Per-Em Space
7::fcaps("{U+1F1FA}{U+1F1E6}")	; Regional indicators UA (will transform to Ukrainian flag)

+sc01A::fcaps("{Raw}{")
*sc01A::fcaps("{Raw}[")
+sc01B::fcaps("{Raw}}")
*sc01B::fcaps("{Raw}]")

; ----------------------------------------------------------------
; Config switching
; ----------------------------------------------------------------

+y::
if (WithNumpad) {
	MsgBox, 64,,Compact (40-80`%) keyboard mode `n (without numpad), 2
	WithNumpad := false
} else {
	MsgBox, 64,,Fullsized keyboard mode, 2
	WithNumpad := true
}
SetCapsLockState Off
return

!y::
if (EmDashWithSpace) {
	MsgBox, 64,,Em Dash mode => Only dash, 2
	EmDashWithSpace := false
} else {
	MsgBox, 64,,Em Dash mode => NBSpace + Em Dash + Space, 2
	EmDashWithSpace := true
}
SetCapsLockState Off
return

^y::
if (DittoWithBars) {
	MsgBox, 64,,Ditto only, 2
	DittoWithBars := false
} else {
	MsgBox, 64,,Ditto with horizontal bars on the sides, 2
	DittoWithBars := true
}
SetCapsLockState Off
return

y::
if (HexNumbersUpper) {
	MsgBox, 64,,Enable lowercase Hexadecimal keypad`nwhen NumLock mode is "On", 2
	HexNumbersUpper := false
} else {
	MsgBox, 64,,Enable uppercase Hexadecimal keypad`nwhen NumLock mode is "On", 2
	HexNumbersUpper := true
}
SetCapsLockState Off
return


#If

