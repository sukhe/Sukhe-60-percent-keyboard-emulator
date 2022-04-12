#If GetKeyState("Tab", "P")

sc02B::fsend("{U+2044}")	; ⁄ Fraction Slash

1::
k := GetKeySC(A_PriorKey)
if (k=2) {
	Send {Backspace}
	fsend("{U+215F}{U+2081}")
} else if (k>1 and k<14) {
	z := AKey[k]
	fsend(z)
	fsend("{U+2044}{U+2081}")
} else {
	fsend("{U+215F}")
}
return

2::
k := GetKeySC(A_PriorKey)
if (k=2) {
	Send {Backspace}
	fsend("{U+00BD}")
} else if (k>1 and k<14) {
	z := AKey[k]
	fsend(z)
	fsend("{U+2044}{U+2082}")
}
return

3::
k := GetKeySC(A_PriorKey)
if (k=2) {
	z := AKey3[k]
	Send {Backspace}
	fsend(z)
} else if (k=3 or k=11) {
	z := AKey3[k]
	fsend(z)
} else if (k>3 and k<14) {
	z := AKey[k]
	fsend(z)
	fsend("{U+2044}{U+2083}")
}
return

4::
k := GetKeySC(A_PriorKey)
if (k=2) {
	z := AKey4[k]
	Send {Backspace}
	fsend(z)
}
if (k=1) {
	z := AKey4[k]
	fsend(z)
} else if (k>2 and k<14) {
	z := AKey[k]
	Send %z%
	fsend("{U+2044}{U+2084}")
}
return

5::
k := GetKeySC(A_PriorKey)
if (k=2) {
	z := AKey5[k]
	Send {Backspace}
	fsend(z)
} else if (k>1 and k<6) {
	z := AKey5[k]
	fsend(z)
} else if (k>2 and k<14) {
	z := AKey[k]
	fsend(z)
	fsend("{U+2044}{U+2085}")
}
return

6::
k := GetKeySC(A_PriorKey)
if (k=6) {
	z := AKey6[k]
	fsend(z)
} else if (k=2) {
	z := AKey6[k]
	Send {Backspace}
	fsend(z)
} else if (k>2 and k<14) {
	z := AKey[k]
	fsend(z)
	fsend("{U+2044}{U+2086}")
}
return

7::
k := GetKeySC(A_PriorKey)
if (k=2) {
	Send {Backspace}
	fsend("{U+2150}")
} else if (k>2 and k<14) {
	z := AKey[k]
	fsend(z)
	fsend("{U+2044}{U+2087}")
}
return

8::
k := GetKeySC(A_PriorKey)
if (k=2) {
	z := AKey8[k]
	Send {Backspace}
	fsend(z)
} else if (k=4 or k=6 or k=8) {
	z := AKey8[k]
	fsend(z)
} else if (k>2 and k<14) {
	z := AKey[k]
	fsend(z)
	fsend("{U+2044}{U+2088}")
}
return

9::
k := GetKeySC(A_PriorKey)
if (k=2) {
	Send {Backspace}
	fsend("{U+2151}")
} else if (k>2 and k<14) {
	z := AKey[k]
	fsend(z)
	fsend("{U+2044}{U+2089}")
}
return

0::
k := GetKeySC(A_PriorKey)
if (k=2) { 
	Send {Backspace}
	fsend("{U+2152}")
} else if (k>2 and k<14) {
	z := AKey[k]
	fsend(z)
	fsend("{U+2044}{U+2081}{U+2080}")
}
return

; ----------------------------------------------------------------
; Superscript digits
; ----------------------------------------------------------------

+0::fsend("{U+2070}")	; ⁰ Superscript Zero
+1::fsend("{U+00B9}")	; ¹ Superscript One
+2::fsend("{U+00B2}")	; ² Superscript Two
+3::fsend("{U+00B3}")	; ³ Superscript Three
+4::fsend("{U+2074}")	; ⁴ Superscript Four
+5::fsend("{U+2075}")	; ⁵ Superscript Five
+6::fsend("{U+2076}")	; ⁶ Superscript Six
+7::fsend("{U+2077}")	; ⁷ Superscript Seven
+8::fsend("{U+2078}")	; ⁸ Superscript Eight
+9::fsend("{U+2079}")	; ⁹ Superscript Nine
+sc00C::fsend("{U+207B}")	; ⁻ Superscript Minus
+sc00D::fsend("{U+207C}")	; ⁼ Superscript Equals Sign
+sc02B::fsend("{U+207A}")	; ⁺ Superscript Plus Sign
+sc01A::fsend("{U+207D}")	; ⁽ Superscript Left Parenthesis
+sc01B::fsend("{U+207E}")	; ⁾ Superscript Right Parenthesis

; ----------------------------------------------------------------
; Subscript digits
; ----------------------------------------------------------------

!0::fsend("{U+2080}")	; ₀ Subscript Zero
!1::fsend("{U+2081}")	; ₁ Subscript One
!2::fsend("{U+2082}")	; ₂ Subscript Two
!3::fsend("{U+2083}")	; ₃ Subscript Three
!4::fsend("{U+2084}")	; ₄ Subscript Four
!5::fsend("{U+2085}")	; ₅ Subscript Five
!6::fsend("{U+2086}")	; ₆ Subscript Six
!7::fsend("{U+2087}")	; ₇ Subscript Seven
!8::fsend("{U+2088}")	; ₈ Subscript Eight
!9::fsend("{U+2089}")	; ₉ Subscript Nine
!sc00C::fsend("{U+208B}")	; ₋ Subscript Minus
!sc00D::fsend("{U+208C}")	; ₌ Subscript Equals Sign
!sc02B::fsend("{U+208A}")	; ₊ Subscript Plus Sign
!sc01A::fsend("{U+208D}")	; ₍ Subscript Left Parenthesis
!sc01B::fsend("{U+208E}")	; ₎ Subscript Right Parenthesis

; ----------------------------------------------------------------
; Functional keys for 40% keyboard
; ----------------------------------------------------------------

*u::Send {Blind}{F1}	; u
*i::Send {Blind}{F2}	; i
*o::Send {Blind}{F3}	; o
*p::Send {Blind}{F4}	; p
*j::Send {Blind}{F5}	; j
*k::Send {Blind}{F6}	; k
*l::Send {Blind}{F7}	; l
*sc027::Send {Blind}{F8}	; '"
*m::Send {Blind}{F9}	; m
*sc033::Send {Blind}{F10}	; ,<
*sc034::Send {Blind}{F11}	; .>
*sc035::Send {Blind}{F12}	; /?

; ----------------------------------------------------------------
; Copy/Paste/Cut for Linux
; ----------------------------------------------------------------

sc028::Send ^{Ins}
sc01A::Send +{Ins}
sc01B::Send +{Del}

; ----------------------------------------------------------------
; Private Use Area
; ----------------------------------------------------------------

; qwerty
; asdfgh
; zxcvbn

+q::fsend("{U+00D8}") ; Ø Latin Capital Letter O with Stroke
q::fsend("{U+00F8}")	; ø Latin Small Letter O with Stroke

+e::fsend("{U+0152}")	; Œ Latin Capital Ligature Oe
e::fsend("{U+0153}")	; œ Latin Small Ligature Oe

;!::fsend("{U+0166}")	; Ŧ Latin Capital Letter T with Stroke
;^::fsend("{U+0167}")	; ŧ Latin Small Letter T with Stroke

+t::fsend("{U+00DE}")	; Þ Latin Capital Letter Thorn
t::fsend("{U+00FE}")	; þ Latin Small Letter Thorn

+a::fsend("{U+00C6}")	; Æ Latin Capital Letter Ae
a::fsend("{U+00E6}")	; æ Latin Small Letter Ae

!s::fsend("{U+017F}")	; ſ Latin Small Letter Long S
+s::fsend("{U+1E9E}")	; ẞ Latin Capital Letter Sharp S
s::fsend("{U+00DF}")	; ß Latin Small Letter Sharp S

+d::fsend("{U+00D0}")	; Ð Latin Capital Letter Eth
d::fsend("{U+00F0}")	; ð Latin Small Letter Eth

;+f::fsend("{U+0191}")	; Ƒ Latin Capital Letter F with Hook
;+f::fsend("{U+0192}")	; ƒ Latin Small Letter F with Hook

+n::fsend("{U+014A}")	; Ŋ Latin Capital Letter Eng
n::fsend("{U+014B}")	; ŋ Latin Small Letter Eng

!z::fsend("{U+01B7}")	; Ʒ Latin Capital Letter Ezh
+z::fsend("{U+01B7}")	; Ʒ Latin Capital Letter Ezh	(in my keyboard this combination don't work)
z::fsend("{U+0292}")	; ʒ Latin Small Letter Ezh

+c::fsend("{U+018F}")	; Ə Latin Capital Letter Schwa
c::fsend("{U+0259}")	; ə Latin Small Letter Schwa


#If
