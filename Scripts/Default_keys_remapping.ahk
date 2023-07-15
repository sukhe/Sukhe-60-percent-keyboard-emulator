diacritic_after() {
	global DiacriticAfterSymbol
	if (DiacriticAfterSymbol) {
		;MsgBox, 64,,Diacritic before symbol`n(dead key mode), 1
		MsgBox("Diacritic before symbol`n(dead key mode)",, "64 T1")
		DiacriticAfterSymbol := false
	} else {
		;MsgBox, 64,,Diacritic after symbol`n(combining diacritic mode), 1
		MsgBox("Diacritic after symbol`n(combining diacritic mode)",, "64 T1")
		DiacriticAfterSymbol := true
	}
}

disable_search_diacritic() {
    global DisableSearchDiacritic
	if (DisableSearchDiacritic = true) {
		;MsgBox(64,,Enable search in Diacritic Arrays, 1)
		MsgBox("Enable search in Diacritic Arrays",, "64 T1")
		DisableSearchDiacritic := false
	} else {
		MsgBox("Disable search in Diacritic Arrays",, "64 T1")
		DisableSearchDiacritic := true
	}
}

one_html_symbol() {
	MsgBox("One HTML",, "64 T1")
	global HTMLCode
	HTMLCode := true
}

html_code_layer() {
	global HTMLCodeLock
	if (HTMLCodeLock) {
		MsgBox("Disable HTML code mode",, "64 T1")
		HTMLCodeLock := false
	} else {
		MsgBox("Enable HTML code mode",, "64 T1")
		HTMLCodeLock := true
	}
}

enter_unicode_code() {
	global EnterUnicode
	global unicodesymbol
	if (EnterUnicode = true) {
		EnterUnicode := false
		fsend("{U+" . unicodesymbol . "}")
		unicodesymbol := ""
	} else {
		MsgBox("Enter unicode symbol code",, "64 T0.5")
		EnterUnicode := true
	}
}

start_compose() {
	global fcompose
	global farray
	global fprev
	global next
	fcompose := true
	farray := "Start"
	fprev := ""
	next := ""
}

one_arrow() {
	MsgBox("One arrow",, "64 T1")
	global ArrowLayer
	ArrowLayer := true
}

arrows_layer() {
	global ArrowLayerLock
	if (ArrowLayerLock = true) {
		MsgBox("ArrowLetter Layer is Off",, "64 T1")
		ArrowLayerLock := false
	} else {
		MsgBox("Arrow Layer is On",, "64 T1")
		ArrowLayerLock := true
	}
}

!Tab::
{
	SendEvent "{F23}"
}

Space & Tab::
{
	SendEvent "{F24}"
}

Tab Up::
{
	if (A_PriorKey = "Tab")
	{
		SendEvent "{Tab}"
	}
}

; ----------------------------------------------------------------
; Esc
; ----------------------------------------------------------------

#HotIf (EscKey="CapsLock")
CapsLock::return

CapsLock Up::
{
	if ((A_PriorKey = "CapsLock") and (!GetKeyState("Tab", "P")))
	{
		SendEvent "{Esc}"
	}
}
#HotIf


#HotIf (EscKey="sc029")
sc029::return

sc029 Up::
{
	if (GetKeySC(A_PriorKey) = 41)
	{
		SendEvent "{Esc}"
	}
}
#HotIf

; ----------------------------------------------------------------
; RWin
; ----------------------------------------------------------------

#HotIf (RWinKey="RWin")
RWin::return

RWin Up::
{
	if (A_PriorKey = "RWin")
	{
		SendEvent "{NumLock}"
	}
}
#HotIf


#HotIf (RWinKey="PrintScreen")
PrintScreen::return

PrintScreen Up::
{
	if (A_PriorKey = "PrintScreen")
	{
		SendEvent "{NumLock}"
	}
}
#HotIf


#HotIf (RWinKey="RAlt")
RAlt::return
<^>!::return

RAlt Up::
<^>! Up::
{
	if (A_PriorKey = "RAlt")
	{
		SendEvent "{NumLock}"
	}
}
#HotIf


#HotIf (RWinKey="RControl")
RControl::return

RControl Up::
{
	if (A_PriorKey = "RControl")
	{
		SendEvent "{NumLock}"
	}
}
#HotIf


#HotIf (RWinKey="AppsKey")
AppsKey::return

AppsKey Up::
{
	if (A_PriorKey = "AppsKey")
	{
		SendEvent "{NumLock}"
	}
}
#HotIf


; ----------------------------------------------------------------
; MenuKey (Compose)
; ----------------------------------------------------------------

#HotIf (MenuKey="AppsKey")
Space & AppsKey::AppsKey
AppsKey::return

AppsKey Up::
{
	if (A_PriorKey = "AppsKey")
	{
		start_compose()
	}
}

!+AppsKey::html_code_layer()
!AppsKey::one_html_symbol()
^!AppsKey::enter_unicode_code()
#AppsKey::disable_search_diacritic()
^+AppsKey::arrows_layer()
^AppsKey::one_arrow()
+AppsKey::diacritic_after()

#HotIf


#HotIf (MenuKey="PrintScreen")
Space & PrintScreen::AppsKey
PrintScreen::return

PrintScreen Up::
{
	if (A_PriorKey = "PrintScreen")
	{
		start_compose()
	}
}

!+PrintScreen::html_code_layer() ; Don't press Shift and Alt simultaniously on left side!
!PrintScreen::one_html_symbol()
^!PrintScreen::enter_unicode_code()
#PrintScreen::disable_search_diacritic()
^+PrintScreen::arrows_layer()
^PrintScreen::one_arrow()
+PrintScreen::diacritic_after()
#HotIf


#HotIf (MenuKey="RAlt")
Space & RAlt::AppsKey
RAlt::return
<^>!::return

RAlt Up::
<^>! Up::
{
	if (A_PriorKey = "RAlt")
	{
		start_compose()
	}
}

!+RAlt::html_code_layer() ; Don't press Shift and Alt simultaniously on left side!
!RAlt::one_html_symbol()
^!RAlt::enter_unicode_code()
#RAlt::disable_search_diacritic()
^+RAlt::arrows_layer()
^RAlt::one_arrow()
+RAlt::diacritic_after()


#HotIf


#HotIf (MenuKey="RControl")
Space & AppsKey::AppsKey
RControl::return


RControl Up::
{
	if (A_PriorKey = "RControl")
	{
		start_compose()
	}
}

!+RControl::html_code_layer()
!RControl::one_html_symbol()
^!RControl::enter_unicode_code()
#RControl::disable_search_diacritic()
^+RControl::arrows_layer()
^RControl::one_arrow()
+RControl::diacritic_after()

#HotIf

; ----------------------------------------------------------------
; Home End
; ----------------------------------------------------------------

#HotIf (HomeEndPosition="swap_pguppgdn")
PgUp::
{
	SendEvent "{Home}"
}

PgDn::
{
	SendEvent "{End}"
}


Home::
{
	SendEvent "{PgUp}"
}

End::
{
	SendEvent "{PgDn}"
}
#HotIf


#HotIf (HomeEndPosition="swap_browser")
sc16A::
{
	SendEvent "{Home}"
}

sc169::
{
	SendEvent "{End}"
}

Home::
{
	SendEvent "{sc16A}"
}

End::
{
	SendEvent "{sc169}"
}
#HotIf


#HotIf (HomeEndPosition="replace_browser")
;Browser_Back::
sc16A::
{
	SendEvent "{Home}"
}

;Browser_Forward ::
sc169::
{
	SendEvent "{End}"
}	
#HotIf
