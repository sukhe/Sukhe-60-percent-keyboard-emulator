;#NoEnv	; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn	; Enable warnings to assist with detecting common errors.
SendMode "Input"	; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir A_ScriptDir	; Ensures a consistent starting directory.
#SingleInstance Force
#Requires AutoHotkey >=v2.0

;#KeyHistory 0 

SetCapsLockState "Off"
SetNumLockState	"Off"

; ----------------------------------------------------------------
; Get admin privileges
; ----------------------------------------------------------------

/*
To change some of the system settings (for example, the network address of a computer), 
elevated privileges are required. Therefore, a script launched without administrator privileges can't change such settings. 

If you don't need this possibilities, comment out the next block of code. 
If the code remains uncommented, after logging in, a UAC window will appear 
with a warning that AutoHotkey wants to start with elevated privileges.
*/

/*
if not A_IsAdmin
{
   ;Run *RunAs "%A_ScriptFullPath%"  ; Requires v1.0.92.01+
   RunAs "%A_ScriptFullPath%"  ; Requires v1.0.92.01+
   ExitApp
}
*/

; ----------------------------------------------------------------
; Global functions
; ----------------------------------------------------------------

fsend(letter) {
	global HTMLCode
	global HTMLCodeLock
	if ((not HTMLCode) and (not HTMLCodeLock)) {
		if (letter!="Start") {
			Send letter
		}
	}
	else 
	{
		if (Substr(letter,4,2)=="00")
			html := Format("&#x{};",Substr(letter,6,2))
		else if (Substr(letter,4,1)=="0")
			html := Format("&#x{};",Substr(letter,5,3))
		else
			html := Format("&#x{};",Substr(letter,4,4))
		Send "{Raw}%html%"
		HTMLCode := false
	}
	return
}

#Include Compose_and_Other_Arrays.ahk


; ----------------------------------------------------------------
; Default settings for keyboard and keys
; ----------------------------------------------------------------

; Set to 'true' if you have a numeric keypad on your keyboard, 'false' otherwise
; You can switch this setting at any time by pressing CapsLock+Shift+y
; Possible values: true, false

WithNumpad := false

; The RAlt key can act as RAlt, Space, Zero, or Numeric Dot
; Combination for switching: CapsLock + 3
; Possible values: "ralt", "space", "zero", "dot"

; Hexadecimal digits can be upper or lower case (A—F or a—f)
; Combination for switching: CapsLock+y
; Possible values: true, false

HexNumbersUpper := true

; The decimal separator can be locale-dependent or always be a dot
;;;;;; Combination for switching: CapsLock + 5
; Possible values: true, false

NumpadDotAlwaysDot := true

; On many 60% keyboards Esc is in place of the grave accent key (`).
; I don't recommend this placement, because there are many different 
; symbols assigned to this key.
; Possible values: "Esc", "CapsLock", "sc029" (for `Grave` key)

EscKey := "CapsLock"

; On my Thinkpad, between the right Alt and Ctrl is the PrintScreen key.
; On other laptops, there are often only Alt and Ctrl or Alt and Menu 
; to the right of the Space.
; To use these keys instead of the RWin - this setting is applied
; Possible values: "RWin", "PrintScreen", "RAlt", "RControl", "AppsKey"      

RWinKey := "RWin"

; Same reasons for remapping keys as a Menu key (AKA AppsKey)
; This key emulates the Compose key
; Possible values: "AppsKey", "PrintScreen", "RAlt", "RControl"

MenuKey := "AppsKey"

; PageUp/PageDown and Home/End keys can be swapped
; Possible values: "standard", "swap_pguppgdn", "swap_browser", "replace_browser"

HomeEndPosition := "standard"

; With press "Em Dash" send only dash or "Narrow No-Break Space"+"Em Dash"+"Thin Space"
; Combination for switching: CapsLock+Alt+y

EmDashWithSpace := true

; With press "Ditto mark" send only ditto « 〃 » or ditto with bars  — « ―〃― »
; Combination for switching: CapsLock+Ctrl+y

DittoWithBars := true

; ----------------------------------------------------------------
; Global variables and settings
; ----------------------------------------------------------------

DiacriticAfterSymbol := false
DisableSearchDiacritic := false

fcompose := false
farray := ""
ffonts := ""

HTMLCode := false
HTMLCodeLock := false
GreekLayer := false
GreekLayerLock := false
CyrillicLayer := false
CyrillicLayerLock := false
ArrowLayer := false
ArrowLayerLock := false

EnterUnicode := false
global unicodesymbol := ""


; Optional file with variables for the local computer
; This is useful if the main script files are shared across multiple computers
; with different types of keyboards
; Settings from this file override default settings

#Include *i C:\AHK\local_vars.ahk

; ----------------------------------------------------------------
; Higher InputLevel allows remapped keys to fire in rest of script
; ----------------------------------------------------------------

#InputLevel 1


#Include Default_keys_remapping.ahk


; ----------------------------------------------------------------
; Default InputLevel (from here to the end of the script)
; ----------------------------------------------------------------

#InputLevel 0

RWin::return

; Run calculator
Space & RWin::Send "{Launch_App2}"


!CapsLock::SetCapsLockState !GetKeyState("CapsLock", "T") 



*Space::
{
	if (GetKeyState("NumLock","T") and WithNumpad = false) {
		Send "{Blind}{Numpad0}"
	} else {
		Send "{Blind}{Space}"
	}
}


Tab::
{
	KeyWait("Tab")
	if ((A_PriorKey = "Tab")) {
		Send "{Tab}"
	} else {
		Send "%A_PriorKey%{Backspace}"
	}
}

#HotIf GetKeyState("Space", "P")

; ---------------------------------------------------------------- 
; General Purpose Keys
; ----------------------------------------------------------------

*m::Send "{Blind}{Backspace}"	; m
*sc033::Send "{Blind}{Del}"	; ,<
*sc028::Send "{Blind}{Esc}"	; '"
*h::Send "{Blind}{Enter}"	; h

*sc01A::Send "{Blind}{Ins}"	; [{
*sc01B::Send "{Blind}{ScrollLock}"	; ]}
*sc02B::Send "{Blind}{Pause}"	; \|
Backspace::Send "{Blind}{PrintScreen}"

; ----------------------------------------------------------------
; Cursor control keys
; ----------------------------------------------------------------

*j::Send "{Blind}{Left}"	; j
*k::Send "{Blind}{Down}"	; k
*l::Send "{Blind}{Right}"	; l
*i::Send "{Blind}{Up}"	; i
*u::Send "{Blind}{Home}"	; u
*o::Send "{Blind}{End}"	; o
*p::Send "{Blind}{PgUp}"	; p
*sc027::Send "{Blind}{PgDn}"	; ;:

; ----------------------------------------------------------------
; Functional keys
; ----------------------------------------------------------------

*1::Send "{Blind}{F1}"
*2::Send "{Blind}{F2}"
*3::Send "{Blind}{F3}"
*4::Send "{Blind}{F4}"
*5::Send "{Blind}{F5}"
*6::Send "{Blind}{F6}"
*7::Send "{Blind}{F7}"
*8::Send "{Blind}{F8}"
*9::Send "{Blind}{F9}"
*0::Send "{Blind}{F10}"
*sc00C::Send "{Blind}{F11}"
*sc00D::Send "{Blind}{F12}"

; ----------------------------------------------------------------
; Apostrophe, Quotation Marks
; ----------------------------------------------------------------

/*
The apostrophe characters U+2019 and U+02BC are rendered identically. 
But they have different meanings. 
2019 is a punctuation apostrophe and 02BC is a letter apostrophe.

Punctuation marks generally break words (like «we've»).
Modifier letters generally are considered part of a word (like «об'єм» in ukrainian).

Also 2019 is used as a right single quotation mark
*/

+q::fsend("{U+2039}")	; ‹ Single Left-Pointing Angle Quotation Mark
+w::fsend("{U+203A}")	; › Single Right-Pointing Angle Quotation Mark
+e::fsend("{U+201A}")	; ‚ Single Low-9 Quotation Mark
+r::fsend("{U+2018}")	; ‘ Left Single Quotation Mark
+t::fsend("{U+2019}")	; ’ Right Single Quotation Mark
+a::fsend("{U+00AB}")	; « Left Pointing Double Angle Quotation Mark
+s::fsend("{U+00BB}")	; » Right Pointing Double Angle Quotation Mark
+d::fsend("{U+201E}")	; „ Double Low-9 Quotation Mark
+f::fsend("{U+201C}")	; “ Left Double Quotation Mark
+g::fsend("{U+201D}")	; ” Right Double Quotation Mark

/*
		Primary		Secondary
US Engl “ ” fg		‘ ’ rt
UK Engl ‘ ’ rt		“ ” fg
German  „ “	df		‚ ‘ er
French  « » as		‹ › qw

Ukraine « » as		“ ” fg
Spanish « » as		“ ” fg
Portug. « » as		“ ” fg
Italian « » as		“ ” fg

Russian « »	as		„ “ df

*/

; ----------------------------------------------------------------
; Main part of keyboard
; ----------------------------------------------------------------

!q::fsend("{U+2048}")	; ⁈ Question Exclamation Mark
^q::fsend("{U+203C}")	; ‼ Double Exclamation Mark

!e::fsend("{U+20AC}")	; € Euro Sign

^r::fsend("{U+00AE}")	; ® Registered Sign
!r::fsend("{U+2012}")	; ‒ Figure Dash
#r::fsend("{U+203B}")	; ※ Reference Mark

!t::fsend("{U+00AD}")	;   Soft Hyphen
^t::fsend("{U+2122}")	; ™ Trademark Sign

^y::fsend("{U+2E3B}")	; ⸻ Three-Em Dash Три тире
!y::fsend("{U+2E3A}")	; ⸺ Two-Em Dash Два тире опущенное тире
+y::fsend("{U+2015}")	; ― Horizontal Bar Горизонтальная линия

!a::fsend("{U+2217}")	; ∗ Asterisk Operator
^a::fsend("{U+2042}")	; ⁂ Asterism

!s::fsend("{U+00A7}")	; § Section Sign
^s::fsend("{U+00B6}")	; ¶ Pilcrow Sign / paragraph sign
#s::fsend("{U+2117}")	; ℗ Sound Recording Copyright

!d::
{
	if (DittoWithBars) {
		fsend("{U+2015}")	; ― Horizontal Bar
		fsend("{U+3003}")	; 〃 Ditto mark
		fsend("{U+2015}")	; ― Horizontal Bar
	} else {
		fsend("{U+3003}")	; 〃 Ditto mark
	}
}

^d::fsend("{U+00B7}")	; · Middle Dot

!f::fsend("{U+0192}")	; ƒ Latin Small Letter F with Hook
^f::fsend("{U+2055}")	; ⁕ Flower Punctuation Mark

^g::fsend("{U+2021}")	; ‡ Double Dagger  двойной крестик
!g::fsend("{U+2020}")	; † Dagger крестик / символ сноски в США и Англии

+!x::fsend("{U+2612}")	; ☒	Ballot Box with X
+!v::fsend("{U+2611}")	; ☑ Ballot Box with Check
+!b::fsend("{U+2610}")	; ☐ Ballot Box

!z::fsend("{U+00B0}")	; ° Degree Sign
!x::fsend("{U+2032}")	; ′ Prime
!c::fsend("{U+2033}")	; ″ Double prime
!v::fsend("{U+2034}")	; ‴ Triple prime

+x::fsend("{U+2717}")	; ✗ Ballot X
+v::fsend("{U+2713}")	; ✓ Check Mark

^c::fsend("{U+00A9}")	; © Copyright Sign
+c::fsend("{U+00A2}")	; ¢ Cent Sign

+b::fsend("{U+2022}")	; • Bullet
!b::fsend("{U+25E6}")	; ◦ White Bullet
^b::fsend("{U+2043}")	; ⁃ Hyphen Bullet
#b::fsend("{U+2023}")	; ‣ Triangular Bullet

!n::fsend("{U+2116}")	; № Numero Sign
^n::fsend("{U+00AC}")	; ¬ Not Sign
#n::fsend("{U+266A}")	; ♪ Eighth Note

^sc034::fsend("{U+205D}")	; ⁝ Tricolon
!sc034::fsend("{U+2026}")	; … Horizontal Ellipsis
#sc034::fsend("{U+2024}")	; ․ One Dot Leader

!sc035::fsend("{U+00BF}")	; ¿ Inverted Question Mark
^sc035::fsend("{U+00A1}")	; ¡ Inverted Exclamation Mark

!sc029::fsend("{U+00BA}")	; º Masculine Ordinal Indicator Мужской порядковый индикатор
^sc029::fsend("{U+00AA}")	; ª Feminine Ordinal Indicator Женский порядковый индикатор

+sc029::fsend("{U+02BB}")	; ʻ Modifier Letter Turned Comma
sc029::fsend("{U+02BC}")	; ʼ Modifier Letter Apostrophe

; ----------------------------------------------------------------
; Add brackets and other symbols right under fingers
; ----------------------------------------------------------------

q::fsend("{Raw}`{")
w::fsend("{Raw}`}")
e::fsend("{Raw}_")	; _ Underscore
r::fsend("{Raw}!")
t::fsend("{U+2011}")	; ‑ Non-Breaking Hyphen
y::fsend("{U+2013}")	; — En Dash
a::fsend("{Raw}(")
s::fsend("{Raw})")
d::fsend("{Raw}[")
f::fsend("{Raw}]")

g::
{
	if (EmDashWithSpace) {
		fsend("{U+202F}")	; Narrow No-Break Space
		fsend("{U+2014}")	; — Em Dash
		fsend("{U+2009}")	; Thin Space
	} else {
		fsend("{U+2014}")	; — Em Dash
	}
}

; ----------------------------------------------------------------
; Copy/Paste/Cut/Select_all/Undo
; ----------------------------------------------------------------

+n::Send "{Home}{Home}+{End}^c{Home}"	; copy whole line
+sc034::Send "{Home}{Home}+{End}^x{Del}"	; .>  cut whole line
+sc035::Send "{Home}{Home}+{End}^c{End}{Enter}^v"	; duplicate current line

b:: Send "^a"
n:: Send "^c"
sc034:: Send "^x"	; .>
sc035:: Send "^v"	; /?
+z:: Send "+^z"
z:: Send "^z"

; ----------------------------------------------------------------
; Multimedia keys
; ----------------------------------------------------------------

<#x:: Send "{Media_Play_Pause}"
<#!x:: Send "{Media_Stop}"
<#c:: Send "{Media_Prev}"
<#v:: Send "{Media_Next}"
x:: Send "{Volume_Mute}"
c:: Send "{Volume_Down}"
v:: Send "{Volume_Up}"

#HotIf


#HotIf EnterUnicode
0::
1::
2::
3::
4::
5::
6::
7::
8::
9::
v::
b::
f::
g::
r::
t::
Space::
+m::
m::
+sc033::
sc033::
+sc034::
sc034::
+sc035::
+j::
j::
+k::
k::
l::
u::
i::
o::
{
	global unicodesymbol := unicodesymbol.Unicode[A_ThisHotkey]
}
#HotIf



; ----------------------------------------------------------------
; Spaces
; ----------------------------------------------------------------

#HotIf (not(GetKeyState("NumLock","T") and WithNumpad = false))

; No-Break Space
<!Space::fsend("{U+00A0}")

; ----- Thin spaces -----
<+Space::fsend("{U+2009}")	; Thin Space
<!<+Space::fsend("{U+202F}")	; Narrow No-Break Space

; ----- Zero width spaces -----
^Space::fsend("{U+200B}")	; Zero Width Space
<!<^Space::fsend("{U+2060}")	; Word Joiner (zero width, no-break)  

; ----- Rare spaces -----
<+<^Space::fsend("{U+200A}")	; Hair Space
<!<#Space::fsend("{U+2007}")	; Figure Space
<!<^<#Space::fsend("{U+2423}")	; ␣ Open Box
<^<#Space::fsend("{U+2008}")	; Punctuation Space
<+<#Space::fsend("{U+205F}")	; Medium Mathematical Space

#HotIf


F23::!Tab

; ----------------------------------------------------------------
; Layers switching
; ----------------------------------------------------------------

F24::
{
	global GreekLayerLock
	if GetKeyState("Shift", "P") {
		if (GreekLayerLock = true) {
			MsgBox("Greek Layer is Off",, "64 T1")
			GreekLayerLock := false
		} else {
			MsgBox("Greek Layer is On",, "64 T1")
			GreekLayerLock := true
		}
	} else {
		global GreekLayer := true
	}
	SetCapsLockState "Off"
}


Space & CapsLock::
{
	global CyrillicLayerLock
	if GetKeyState("Shift", "P") {
		if (CyrillicLayerLock = true) {
			MsgBox("Cyrillic Layer is Off",, "64 T1")
			CyrillicLayerLock := false
		} else {
			MsgBox("Cyrillic Layer is On",, "64 T1")
			CyrillicLayerLock := true
		}
	} else {
		global CyrillicLayer := true
	}
	SetCapsLockState "Off"
}


; Reload script
^#r::Reload

; ----------------------------------------------------------------
; Attach additional files
; ----------------------------------------------------------------

;#Include Diacritic.ahk
#Include RWin_pressed_layer.ahk
#Include NumLock_On_layer.ahk
#Include CapsLock_pressed_layer.ahk
#Include Tab_pressed_layer.ahk
#Include Greek_layer.ahk
#Include Cyrillic_layer.ahk
#Include ArrowLayer.ahk
#Include Fonts.ahk

; ----------------------------------------------------------------
; Hotstrings example
; ----------------------------------------------------------------

:*:doim::docker image `
:*:doco::docker-compose `
:*:a..::192.168.1.
:*:fox..::The quick brown fox jumps over the lazy dog

; ----------------------------------------------------------------
; Autostart script
; ----------------------------------------------------------------

/*

To run this script automatically at system startup, follow these steps:
1. Install AutoHotkey (https://autohotkey.com/)
2. Create shortcut of this script
3. Move shortcut to startup folder (%appdata%\Microsoft\Windows\Start Menu\Programs\Startup)

For example — C:\Users\MyName\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup

For immediately script start:
1. Install AutoHotkey (https://autohotkey.com/)
2. Double click on this file in the explorer

*/
 
; ----------------------------------------------------------------
; Keyboard code
; ----------------------------------------------------------------

/*

Key  `   1   2   3   4   5   6   7   8   9   0   -   =   \  BS
VK  C0  31  32  33  34  35  36  37  38  39  30  BD  BB  DC  08
SC 029 002 003 004 005 006 007 008 009 00A 00B 00C 00D 02B 00E
sc  41   2   3   4   5   6   7   8   9  10  11  12  13  43  14

Key Tab   q   w   e   r   t   y   u   i   o   p   [   ]
VK   09  51  57  45  52  54  59  55  49  4F  50  DB  DD
SC  00F 010 011 012 013 014 015 016 017 018 019 01A 01B
sc   15  16  17  18  19  20  21  22  23  24  25  26  27

Key Caps   a   s   d   f   g   h   j   k   l   ;   ' Enter
VK    14  41  53  44  46  47  48  4A  4B  4C  BA  DE    0D
SC   03A 01E 01F 020 021 022 023 024 025 026 027 028   01C
sc    58  30  31  32  33  34  35  36  37  38  39  40    28

Key LShift   z   x   c   v   b   n   m   ,   .   / RShift
VK      A0  5A  58  43  56  42  4E  4D  BC  BE  BF     A1
SC     02A 02C 02D 02E 02F 030 031 032 033 034 035    136
sc      42  44  45  46  47  48  49  50  51  52  53    310

Key LCtrl LWin LAlt Space RAlt RWin Menu RCtrl
VK     A2   5B   A4    20   A5   5C   5D    A3
SC    01D  15B  038   039  138  15C  15D   11D
sc     29  347   56    57  312  348  349   285

VK A6  SC 16A	 	Browser_Back 
VK A7  SC 169	 	Browser_Forward

Key between Short Left Shift and Z (ISO keyboard) - SC 056

*/
