diacritic_after() {
	global DiacriticAfterSymbol
	if (DiacriticAfterSymbol) {
		MsgBox, 64,,Diacritic before symbol`n(dead key mode), 1
		DiacriticAfterSymbol := false
	} else {
		MsgBox, 64,,Diacritic after symbol`n(combining diacritic mode), 1
		DiacriticAfterSymbol := true
	}
}

disable_search_diacritic() {
global DisableSearchDiacritic
	if (DisableSearchDiacritic = true) {
		MsgBox, 64,,Enable search in Diacritic Arrays, 1
		DisableSearchDiacritic := false
	} else {
		MsgBox, 64,,Disable search in Diacritic Arrays, 1
		DisableSearchDiacritic := true
	}
}

one_html_symbol() {
	MsgBox, 64,,One HTML, 0.5
	global HTMLCode
	HTMLCode := true
}

html_code_layer() {
	global HTMLCodeLock
	if (HTMLCodeLock) {
		MsgBox, 64,,Disable HTML code mode, 1
		HTMLCodeLock := false
	} else {
		MsgBox, 64,,Enable HTML code mode, 1
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
		MsgBox, 64,,Enter unicode symbol code, 0.5
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
	MsgBox, 64,,One arrow, 0.5
	global ArrowLayer
	ArrowLayer := true
}

arrows_layer() {
	global ArrowLayerLock
	if (ArrowLayerLock = true) {
		MsgBox, 64,,ArrowLetter Layer is Off, 1
		ArrowLayerLock := false
	} else {
		MsgBox, 64,,Arrow Layer is On, 1
		ArrowLayerLock := true
	}
}

!Tab::
	SendEvent {F23}
return

Space & Tab::
	SendEvent {F24}
return

Tab Up::
if (A_PriorKey = "Tab")
{
    SendEvent {Tab}
}
return

; ----------------------------------------------------------------
; Esc
; ----------------------------------------------------------------

#If (EscKey="CapsLock")
CapsLock::return

CapsLock Up::
if ((A_PriorKey = "CapsLock") and (!GetKeyState("Tab", "P")))
{
    SendEvent {Esc}
}
return
#If


#If (EscKey="sc029")
sc029::return

sc029 Up::
if (GetKeySC(A_PriorKey) = 41)
{
    SendEvent {Esc}
}
return
#If

; ----------------------------------------------------------------
; RWin
; ----------------------------------------------------------------

#If (RWinKey="RWin")
RWin::return

RWin Up::
if (A_PriorKey = "RWin")
{
    SendEvent {NumLock}
}
return
#If


#If (RWinKey="PrintScreen")
PrintScreen::return

PrintScreen Up::
if (A_PriorKey = "PrintScreen")
{
    SendEvent {NumLock}
}
return
#If


#If (RWinKey="RAlt")
RAlt::return
<^>!::return

RAlt Up::
<^>! Up::
if (A_PriorKey = "RAlt")
{
    SendEvent {NumLock}
}
return
#If


#If (RWinKey="RControl")
RControl::return

RControl Up::
if (A_PriorKey = "RControl")
{
    SendEvent {NumLock}
}
return
#If


#If (RWinKey="AppsKey")
AppsKey::return

AppsKey Up::
if (A_PriorKey = "AppsKey")
{
    SendEvent {NumLock}
}
return
#If


; ----------------------------------------------------------------
; MenuKey (Compose)
; ----------------------------------------------------------------

#If (MenuKey="AppsKey")
Space & AppsKey::AppsKey
AppsKey::return

AppsKey Up::
if (A_PriorKey = "AppsKey")
{
	start_compose()
}
return
!+AppsKey::html_code_layer()
!AppsKey::one_html_symbol()
^!AppsKey::enter_unicode_code()
#AppsKey::disable_search_diacritic()
^+AppsKey::arrows_layer()
^AppsKey::one_arrow()
+AppsKey::diacritic_after()

#If


#If (MenuKey="PrintScreen")
Space & PrintScreen::AppsKey
PrintScreen::return

PrintScreen Up::
if (A_PriorKey = "PrintScreen")
{
	start_compose()
}
return
!+PrintScreen::html_code_layer() ; Don't press Shift and Alt simultaniously on left side!
!PrintScreen::one_html_symbol()
^!PrintScreen::enter_unicode_code()
#PrintScreen::disable_search_diacritic()
^+PrintScreen::arrows_layer()
^PrintScreen::one_arrow()
+PrintScreen::diacritic_after()
#If


#If (MenuKey="RAlt")
Space & RAlt::AppsKey
RAlt::return
<^>!::return

RAlt Up::
<^>! Up::
if (A_PriorKey = "RAlt")
{
	start_compose()
}
return

!+RAlt::html_code_layer() ; Don't press Shift and Alt simultaniously on left side!
!RAlt::one_html_symbol()
^!RAlt::enter_unicode_code()
#RAlt::disable_search_diacritic()
^+RAlt::arrows_layer()
^RAlt::one_arrow()
+RAlt::diacritic_after()

#If


#If (MenuKey="RControl")
Space & AppsKey::AppsKey
RControl::return


RControl Up::
if (A_PriorKey = "RControl")
{
	start_compose()
}
return
!+RControl::html_code_layer()
!RControl::one_html_symbol()
^!RControl::enter_unicode_code()
#RControl::disable_search_diacritic()
^+RControl::arrows_layer()
^RControl::one_arrow()
+RControl::diacritic_after()

#If

; ----------------------------------------------------------------
; Home End
; ----------------------------------------------------------------

#If (HomeEndPosition="swap_pguppgdn")
PgUp::
SendEvent {Home}
return

PgDn::
SendEvent {End}
return

Home::
SendEvent {PgUp}
return

End::
SendEvent {PgDn}
return
#If


#If (HomeEndPosition="swap_browser")
sc16A::
SendEvent {Home}
return

sc169::
SendEvent {End}
return

Home::
SendEvent {sc16A}
return

End::
SendEvent {sc169}
return
#If


#If (HomeEndPosition="replace_browser")
;Browser_Back::
sc16A::
SendEvent {Home}
return

;Browser_Forward ::
sc169::
SendEvent {End}
return
#If
