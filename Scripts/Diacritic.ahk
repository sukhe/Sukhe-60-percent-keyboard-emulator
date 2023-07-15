arrname(key) {
	return lay() . modif() . key
}

modif() {
	m := ""
	if (GetKeyState("Shift","P")) {
		m := m . "Shift_"
	}
	if (GetKeyState("Alt","P")) {
		m := m . "Alt_"
	}
	if (GetKeyState("Ctrl","P")) {
		m := m . "Ctrl_"
	}
	if (GetKeyState("Win","P")) {
		m := m . "Win_"
	}
	return m
}

unmodif(key) {
	m := ""
	if InStr(key,"Shift") {
		m := "+"
		key := StrReplace(key,"Shift_","")
	}
	if InStr(key,"Alt") {
		m := m . "!"
		key := StrReplace(key,"Alt_","")
	}
	if InStr(key,"Ctrl") {
		m := m . "^"
		key := StrReplace(key,"Ctrl_","")
	}
	if InStr(key,"Win") {
		m := "#"
		key := StrReplace(key,"Win_","")
	}
	return [ m, key ]
}


lay() {
	global RWinKey, CyrillicLayer, CyrillicLayerLock, GreekLayer, GreekLayerLock
	
	if (((RWinKey="RWin") and GetKeyState("RWin", "P")) or ((RWinKey="PrintScreen") and GetKeyState("PrintSctreen", "P")) or ((RWinKey="RAlt") and GetKeyState("RAlt", "P")) or ((RWinKey="RControl") and GetKeyState("RControl", "P")) or ((RWinKey="AppsKey") and GetKeyState("AppsKey", "P"))) 
	{
		m := "W_"
	} else {
		if (GetKeyState("Tab", "P")) {
			m := "T_"
		} else {
			if (GetKeyState("CapsLock", "P")) {
				m := "C_"
			} else {
				if (GetKeyState("Space", "P")) {
					m := "S_"
				} else {
					if (CyrillicLayerLock or CyrillicLayer) {
						m := "Y_"
					} else {
						if (GreekLayerLock or GreekLayer) {
							m := "G_"
						} else {
							m := ""
						}
					}
				}
			}
		}
	}
	return m
}


#HotIf fcompose

; Zero-Width Non-Joiner
^Backspace::
{
	fsend("{U+200C}")
	global fcompose := false
return
}

; Combining Grapheme Joiner
+Backspace::
{
	fsend("{U+034F}")
	global fcompose := false
return
}

; Zero-width Joiner
Backspace::
{
	fsend("{U+200D}")
	global fcompose := false
return
}

*Space::
*a::
*b::
*c::
*d::
*e::
*f::
*g::
*h::
*i::
*j::
*k::
*l::
*m::
*n::
*o::
*p::
*q::
*r::
*s::
*t::
*u::
*v::
*w::
*x::
*y::
*z::
*0::
*1::
*2::
*3::
*4::
*5::
*6::
*7::
*8::
*9::
*sc00C::
*sc00D::
*sc02B::
*sc01A::
*sc01B::
*sc027:: 
*sc028::
*sc029::
*sc033::
*sc034::
*sc035::
{
global farray
global ffonts

k := A_ThisHotkey
k := Substr(k,2)
fullkeyname := lay() . modif() . k

if (farray="Math") {
	if (fullkeyname="m") {
		ffonts := ""
	} else {
		ffonts := fullkeyname
	}
	global fcompose := false
	return
}

if (DiacriticAfterSymbol) {
	if (farray="Start" and fullkeyname="m") {
		farray := "Math"
		return
	}
	ddd := Diacr[fullkeyname]
	fsend(ddd)
	global fcompose := false
} else {


fprev := farray
farray := %farray%[fullkeyname]	; search next matching in arrays
if ((fprev != "Start") and DisableSearchDiacritic) {
	um := unmodif(fullkeyname)
	fsend(um[1] . "{" . um[2] . "}")
	fsend(Diacr[fprev])
	global fcompose := false
	return
}

if (farray="") {	; matching not found
	prev := %fprev%["*"]	; is default element exist?
	if (prev="") {	; no, it isn't
		if (Substr(fprev,1,2)="A_") {
			fprev := StrReplace(fprev,"A_","")
		}
		prev := Diacr[fprev]	; search diacritic in previous matching
		if (prev="") {	; previous symbol are not diacritic, sending previous and current symbols
			um := unmodif(fprev)
			umm := um[1] . "{" . um[2] . "}"
			fsend(umm)
			um := unmodif(fullkeyname)
			fsend(um[1] . "{" . um[2] . "}")
			umm := um[1] . "{" . um[2] . "}"
		} else {	; sending current symbol, then - diacritic from previous matching
			um := unmodif(fullkeyname)
			fsend(um[1] . "{" . um[2] . "}")
			umm := um[1] . "{" . um[2] . "}"
			fsend(prev)
		}
	} else {	; send default symbol from array chain, then — current symbol?
		fsend(prev)
		um := unmodif(fullkeyname)
		umm := um[1] . "{" . um[2] . "}"
		fsend(um[1] . "{" . um[2] . "}")
	}
	global fcompose := false
}

if (SubStr(farray,1,2)="{U") {
	fsend(farray)
	global fcompose := false
}

}

return
}

#HotIf
