fgre(x)
{
	fsend(x)
	global fcompose
	global farray
	global GreekLayer
	global Diacr
	GreekLayer := false
	if (fcompose and farray!="") {
		fcompose := false
		dia := Diacr[farray]
		fsend(dia)
		farray := ""
	}
	SetCapsLockState Off
}

#If (GreekLayer or GreekLayerLock)

; ----------------------------------------------------------------
; Greek letters
; ----------------------------------------------------------------

+!u::fgre("{U+03F4}")	; ϴ Greek Capital Theta Symbol
+!s::fgre("{U+03F9}")	; Ϲ Greek Capital Lunate Sigma Symbol
!b::fgre("{U+03D0}")	; ϐ Greek Beta Symbol
!d::fgre("{U+2202}")	; ∂ Partial Differential
!e::fgre("{U+03F5}")	; ϵ Greek Lunate Epsilon Symbol
!u::fgre("{U+03D1}")	; ϑ Greek Theta Symbol
!k::fgre("{U+03F0}")	; ϰ Greek Kappa Symbol
!r::fgre("{U+03F1}")	; ϱ Greek Rho Symbol
!s::fgre("{U+03F2}")	; ϲ Greek Lunate Sigma Symbol
!p::fgre("{U+03D6}")	; ϖ Greek Pi Symbol
!f::fgre("{U+03D5}")	; ϕ Greek Phi Symbol

+a::fgre("{U+0391}")	; Α Greek Capital Letter Alpha
+b::fgre("{U+0392}")	; Β Greek Capital Letter Beta
+g::fgre("{U+0393}")	; Γ Greek Capital Letter Gamma
+d::fgre("{U+0394}")	; Δ Greek Capital Letter Delta
+e::fgre("{U+0395}")	; Ε Greek Capital Letter Epsilon
+z::fgre("{U+0396}")	; Ζ Greek Capital Letter Zeta
+h::fgre("{U+0397}")	; Η Greek Capital Letter Eta
+u::fgre("{U+0398}")	; Θ Greek Capital Letter Theta
+i::fgre("{U+0399}")	; Ι Greek Capital Letter Iota
+k::fgre("{U+039A}")	; Κ Greek Capital Letter Kappa
+l::fgre("{U+039B}")	; Λ Greek Capital Letter Lamda
+m::fgre("{U+039C}")	; Μ Greek Capital Letter Mu
+n::fgre("{U+039D}")	; Ν Greek Capital Letter Nu
+j::fgre("{U+039E}")	; Ξ Greek Capital Letter Xi
+o::fgre("{U+039F}")	; Ο Greek Capital Letter Omicron
+p::fgre("{U+03A0}")	; Π Greek Capital Letter Pi
+r::fgre("{U+03A1}")	; Ρ Greek Capital Letter Rho
+s::fgre("{U+03A3}")	; Σ Greek Capital Letter Sigma
+t::fgre("{U+03A4}")	; Τ Greek Capital Letter Tau
+y::fgre("{U+03A5}")	; Υ Greek Capital Letter Upsilon
+f::fgre("{U+03A6}")	; Φ Greek Capital Letter Phi
+x::fgre("{U+03A7}")	; Χ Greek Capital Letter Chi
+c::fgre("{U+03A8}")	; Ψ Greek Capital Letter Psi
+v::fgre("{U+03A9}")	; Ω Greek Capital Letter Omega
+w::fsend("{U+0344}")	; ̈́ Combining Greek Dialytika Tonos

a::fgre("{U+03B1}")	; α Greek Small Letter Alpha Α
b::fgre("{U+03B2}")	; β Greek Small Letter Beta  Β
g::fgre("{U+03B3}")	; γ Greek Small Letter Gamma Γ
d::fgre("{U+03B4}")	; δ	Greek Small Letter Delta Δ
e::fgre("{U+03B5}")	; ε Greek Small Letter Epsilon Ε
z::fgre("{U+03B6}")	; ζ Greek Small Letter Zeta Ζ
h::fgre("{U+03B7}")	; η Greek Small Letter Eta Η
u::fgre("{U+03B8}")	; θ Greek Small Letter Theta Θ
i::fgre("{U+03B9}")	; ι Greek Small Letter Iota Ι
k::fgre("{U+03BA}")	; κ Greek Small Letter Kappa Κ
l::fgre("{U+03BB}")	; λ Greek Small Letter Lamda Λ
m::fgre("{U+03BC}")	; μ Greek Small Letter Mu Μ
n::fgre("{U+03BD}")	; ν Greek Small Letter Nu Ν
j::fgre("{U+03BE}")	; ξ Greek Small Letter Xi Ξ
o::fgre("{U+03BF}")	; ο Greek Small Letter Omicron Ο
p::fgre("{U+03C0}")	; π Greek Small Letter Pi Π
r::fgre("{U+03C1}")	; ρ Greek Small Letter Rho Ρ
s::fgre("{U+03C3}")	; σ Greek Small Letter Sigma Σ
t::fgre("{U+03C4}")	; τ	Greek Small Letter Tau Τ
y::fgre("{U+03C5}")	; υ Greek Small Letter Upsilon Υ
f::fgre("{U+03C6}")	; φ Greek Small Letter Phi Φ
x::fgre("{U+03C7}")	; χ Greek Small Letter Chi Χ
c::fgre("{U+03C8}")	; ψ Greek Small Letter Psi Ψ
v::fgre("{U+03C9}")	; ω	Greek Small Letter Omega Ω
w::fgre("{U+03C2}")	; ς Greek Small Letter Final Sigma ς

sc033::fgre("{U+2207}")	; ∇ Nabla

; ----------------------------------------------------------------
; Zodiac
; ----------------------------------------------------------------

^sc029::fgre("{U+26CE}")	; ⛎ Ophiuchus
^1::fgre("{U+2651}")	; ♑ Capricorn
^2::fgre("{U+2652}")	; ♒ Aquarius
^3::fgre("{U+2653}")	; ♓ Pisces
^4::fgre("{U+2648}")	; ♈ Aries
^5::fgre("{U+2649}")	; ♉ Taurus
^6::fgre("{U+264A}")	; ♊ Gemini
^7::fgre("{U+264B}")	; ♋ Cancer
^8::fgre("{U+264C}")	; ♌ Leo
^9::fgre("{U+264D}")	; ♍ Virgo
^0::fgre("{U+264E}")	; ♎ Libra
^sc00C::fgre("{U+264F}")	; ♏ Scorpius
^sc00D::fgre("{U+2650}")	; ♐ Sagittarius

; ----------------------------------------------------------------
; Time
; ----------------------------------------------------------------

!+1::fgre("{U+1F55C}")	; 🕜 Clock Face One-Thirty
!+2::fgre("{U+1F55D}")	; 🕝 Clock Face Two-Thirty
!+3::fgre("{U+1F55E}")	; 🕞 Clock Face Three-Thirty
!+4::fgre("{U+1F55F}")	; 🕟 Clock Face Four-Thirty
!+5::fgre("{U+1F560}")	; 🕠 Clock Face Five-Thirty
!+6::fgre("{U+1F561}")	; 🕡 Clock Face Six-Thirty
!+7::fgre("{U+1F562}")	; 🕢 Clock Face Seven-Thirty
!+8::fgre("{U+1F563}")	; 🕣 Clock Face Eight-Thirty
!+9::fgre("{U+1F564}")	; 🕤 Clock Face Nine-Thirty
!+0::fgre("{U+1F565}")	; 🕥 Clock Face Ten-Thirty
!+sc00C::fgre("{U+1F566}")	; 🕦 Clock Face Eleven-Thirty
!+sc00D::fgre("{U+1F567}")	; 🕧 Clock Face Twelve-Thirty

!1::fgre("{U+1F550}")	; 🕐 Clock Face One Oclock
!2::fgre("{U+1F551}")	; 🕑 Clock Face Two Oclock
!3::fgre("{U+1F552}")	; 🕒 Clock Face Three Oclock
!4::fgre("{U+1F553}")	; 🕓 Clock Face Four Oclock
!5::fgre("{U+1F554}")	; 🕔 Clock Face Five Oclock
!6::fgre("{U+1F555}")	; 🕕 Clock Face Six Oclock
!7::fgre("{U+1F556}")	; 🕖 Clock Face Seven Oclock
!8::fgre("{U+1F557}")	; 🕗 Clock Face Eight Oclock
!9::fgre("{U+1F558}")	; 🕘 Clock Face Nine Oclock
!0::fgre("{U+1F559}")	; 🕙 Clock Face Ten Oclock
!sc00C::fgre("{U+1F55A}")	; 🕚 Clock Face Eleven Oclock
!sc00D::fgre("{U+1F55B}")	; 🕛 Clock Face Twelve Oclock

; ----------------------------------------------------------------
; Roman numerals
; ----------------------------------------------------------------

+1::fgre("{U+2170}")	; ⅰ Small Roman Numeral One
+2::fgre("{U+2171}")	; ⅱ Small Roman Numeral Two
+3::fgre("{U+2172}")	; ⅲ Small Roman Numeral Three
+4::fgre("{U+2173}")	; ⅳ Small Roman Numeral Four
+5::fgre("{U+2174}")	; ⅴ Small Roman Numeral Five
+6::fgre("{U+2175}")	; ⅵ Small Roman Numeral Six
+7::fgre("{U+2176}")	; ⅶ Small Roman Numeral Seven
+8::fgre("{U+2177}")	; ⅷ Small Roman Numeral Eight
+9::fgre("{U+2178}")	; ⅸ Small Roman Numeral Nine
+0::fgre("{U+2179}")	; ⅹ Small Roman Numeral Ten
+sc00C::fgre("{U+217A}")	; ⅺ Small Roman Numeral Eleven
+sc00D::fgre("{U+217B}")	; ⅻ Small Roman Numeral Twelve
+sc027::fgre("{U+217C}")	; ⅼ Small Roman Numeral Fifty
+sc028::fgre("{U+217D}")	; ⅽ Small Roman Numeral One Hundred
+sc01A::fgre("{U+217E}")	; ⅾ Small Roman Numeral Five Hundred
+sc01B::fgre("{U+217F}")	; ⅿ Small Roman Numeral One Thousand

1::fgre("{U+2160}")	; Ⅰ Roman Numeral One
2::fgre("{U+2161}")	; Ⅱ Roman Numeral Two
3::fgre("{U+2162}")	; Ⅲ Roman Numeral Three
4::fgre("{U+2163}")	; Ⅳ Roman Numeral Four
5::fgre("{U+2164}")	; Ⅴ Roman Numeral Five
6::fgre("{U+2165}")	; Ⅵ Roman Numeral Six
7::fgre("{U+2166}")	; Ⅶ Roman Numeral Seven
8::fgre("{U+2167}")	; Ⅷ Roman Numeral Eight
9::fgre("{U+2168}")	; Ⅸ Roman Numeral Nine
0::fgre("{U+2169}")	; Ⅹ Roman Numeral Ten
sc00C::fgre("{U+216A}")	; Ⅺ Roman Numeral Eleven
sc00D::fgre("{U+216B}")	; Ⅻ Roman Numeral Twelve
sc027::fgre("{U+216C}")	; Ⅼ Roman Numeral Fifty
sc028::fgre("{U+216D}")	; Ⅽ Roman Numeral One Hundred
sc01A::fgre("{U+216E}")	; Ⅾ Roman Numeral Five Hundred
sc01B::fgre("{U+216F}")	; Ⅿ Roman Numeral One Thousand

#If
