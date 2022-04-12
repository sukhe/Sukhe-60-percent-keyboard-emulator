fcyr(x)
{
	fsend(x)
	global fcompose
	global farray
	global CyrillicLayer
	global Diacr
	CyrillicLayer := false
	if (fcompose and farray!="") {
		fcompose := false
		dia := Diacr[farray]
		fsend(dia)
		farray := ""
	}
	SetCapsLockState Off
}

#If (CyrillicLayer or CyrillicLayerLock)

+a::fcyr("{U+04D4}")	; Ӕ Cyrillic Capital Ligature a Ie
+n::fcyr("{U+040A}")	; Њ Cyrillic Capital Letter Nje
+l::fcyr("{U+0409}")	; Љ Cyrillic Capital Letter Lje
+z::fcyr("{U+040F}")	; Џ Cyrillic Capital Letter Dzhe
+d::fcyr("{U+0402}")	; Ђ Cyrillic Capital Letter Dje
+t::fcyr("{U+040B}")	; Ћ Cyrillic Capital Letter Tshe
+g::fcyr("{U+0403}")	; Ѓ Cyrillic Capital Letter Gje
+f::fcyr("{U+0490}")	; Ґ Cyrillic Capital Letter Ghe with Upturn
+o::fcyr("{U+0401}")	; Ё Cyrillic Capital Letter Io
+e::fcyr("{U+0400}")	; Ѐ Cyrillic Capital Letter Ie with Grave
+9::fcyr("{U+0404}")	; Є Cyrillic Capital Letter Ukrainian Ie
+k::fcyr("{U+040C}")	; Ќ Cyrillic Capital Letter Kje
+s::fcyr("{U+0405}")	; Ѕ Cyrillic Capital Letter Dze
+i::fcyr("{U+0406}")	; І Cyrillic Capital Letter Byelorussian-Ukrainian I
+u::fcyr("{U+0407}")	; Ї Cyrillic Capital Letter Yi
+m::fcyr("{U+040D}")	; Ѝ Cyrillic Capital Letter I with Grave
+j::fcyr("{U+0408}")	; Ј Cyrillic Capital Letter Je
+y::fcyr("{U+040E}")	; Ў Cyrillic Capital Letter Short U
+sc01B::fcyr("{U+042A}")	; Ъ Cyrillic Capital Letter Hard Sign
+p::fcyr("{U+042B}")	; Ы Cyrillic Capital Letter Yeru

+sc028::
+0::fcyr("{U+042D}")	; Э Cyrillic Capital Letter E

+sc01A::fcyr("{U+042C}")	; Ь Cyrillic Capital Letter Soft Sign
+q::fcyr("{U+042E}")	; Ю Cyrillic Capital Letter Yu
+r::fcyr("{U+042F}")	; Я Cyrillic Capital Letter Ya
+w::fcyr("{U+0429}")	; Щ Cyrillic Capital Letter Shcha
^i::fcyr("{U+0418}")	; И Cyrillic Capital Letter I


a::fcyr("{U+04D5}")	; ӕ Cyrillic Small Ligature a Ie
n::fcyr("{U+045A}")	; њ Cyrillic Small Letter Nje
l::fcyr("{U+0459}")	; љ Cyrillic Small Letter Lje
z::fcyr("{U+045F}")	; џ Cyrillic Small Letter Dzhe
d::fcyr("{U+0452}")	; ђ Cyrillic Small Letter Dje
t::fcyr("{U+045B}")	; ћ Cyrillic Small Letter Tshe
g::fcyr("{U+0453}")	; ѓ Cyrillic Small Letter Gje
f::fcyr("{U+0491}")	; ґ Cyrillic Small Letter Ghe with Upturn
o::fcyr("{U+0451}")	; ё Cyrillic Small Letter Io
e::fcyr("{U+0450}")	; ѐ Cyrillic Small Letter Ie with Grave
9::fcyr("{U+0454}")	; є Cyrillic Small Letter Ukrainian Ie
k::fcyr("{U+045C}")	; ќ Cyrillic Small Letter Kje
s::fcyr("{U+0455}")	; ѕ Cyrillic Small Letter Dze
i::fcyr("{U+0456}")	; і Cyrillic Small Letter Byelorussian-Ukrainian I
u::fcyr("{U+0457}")	; ї Cyrillic Small Letter Yi
m::fcyr("{U+045D}")	; ѝ Cyrillic Small Letter I with Grave
j::fcyr("{U+0458}")	; ј Cyrillic Small Letter Je
y::fcyr("{U+045E}")	; ў Cyrillic Small Letter Short U
sc01B::fcyr("{U+044A}")	; ъ Cyrillic Small Letter Hard Sign
p::fcyr("{U+044B}")	; ы Cyrillic Small Letter Yeru

sc028::
0::fcyr("{U+044D}")	; э Cyrillic Small Letter E

sc01A::fcyr("{U+044C}")	; ь Cyrillic Small Letter Soft Sign
q::fcyr("{U+044E}")	; ю Cyrillic Small Letter Yu
r::fcyr("{U+044F}")	; я Cyrillic Small Letter Ya
w::fcyr("{U+0449}")	; щ Cyrillic Small Letter Shcha
!i::fcyr("{U+0438}")	; и Cyrillic Small Letter I


+6::fcyr("{U+04D8}")	; Ә Cyrillic Capital Letter Schwa
6::fcyr("{U+04D9}")	; ә Cyrillic Small Letter Schwa
+8::fcyr("{U+04E8}")	; Ө Cyrillic Capital Letter Barred O
8::fcyr("{U+04E9}")	; ө Cyrillic Small Letter Barred O
+h::fcyr("{U+04BA}")	; Һ Cyrillic Capital Letter Shha
h::fcyr("{U+04BB}")	; һ Cyrillic Small Letter Shha
^n::fcyr("{U+04A2}")	; Ң Cyrillic Capital Letter En with Descender
!n::fcyr("{U+04A3}")	; ң Cyrillic Small Letter En with Descender
^f::fcyr("{U+0492}")	; Ғ Cyrillic Capital Letter Ghe with Stroke
!f::fcyr("{U+0493}")	; ғ Cyrillic Small Letter Ghe with Stroke
^k::fcyr("{U+049A}")	; Қ Cyrillic Capital Letter Ka with Descender
!k::fcyr("{U+049B}")	; қ Cyrillic Small Letter Ka with Descender
+v::fcyr("{U+04AE}")	; Ү Cyrillic Capital Letter Straight U
v::fcyr("{U+04AF}")	; ү Cyrillic Small Letter Straight U
^v::fcyr("{U+04B0}")	; Ұ Cyrillic Capital Letter Straight U with Stroke
!v::fcyr("{U+04B1}")	; ұ Cyrillic Small Letter Straight U with Stroke
+sc027::fcyr("{U+0496}")	; Җ Cyrillic Capital Letter Zhe with Descender литеры
sc027::fcyr("{U+0497}")	; җ Cyrillic Small Letter Zhe with Descender
^sc027::fcyr("{U+04C1}")	; Ӂ Cyrillic Capital Letter Zhe with Breve
!sc027::fcyr("{U+04C2}")	; ӂ Cyrillic Small Letter Zhe with Breve
+x::fcyr("{U+04B2}")	; Ҳ Cyrillic Capital Letter Ha with Descender
x::fcyr("{U+04B3}")	; ҳ Cyrillic Small Letter Ha with Descender
+4::fcyr("{U+04B6}")	; Ҷ Cyrillic Capital Letter Che with Descender
4::fcyr("{U+04B7}")	; ҷ	Cyrillic Small Letter Che with Descender
^m::fcyr("{U+04E2}")	; Ӣ Cyrillic Capital Letter I with Macron макроном
!m::fcyr("{U+04E3}")	; ӣ Cyrillic Small Letter I with Macron
^y::fcyr("{U+04EE}")	; Ӯ Cyrillic Capital Letter U with Macron макроном
!y::fcyr("{U+04EF}")	; ӯ Cyrillic Small Letter U with Macron

; Montenegrin letters « З́ » and « С́ »- sending two symbols
+3::fcyr("{U+0417}{U+0301}")	; З́
3::fcyr("{U+0437}{U+0301}")	; з́ 
+c::fcyr("{U+0421}{U+0301}")	; С́
c::fcyr("{U+0441}{U+0301}")	; с́

#If
