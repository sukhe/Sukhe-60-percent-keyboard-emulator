#If (GetKeyState(RWinKey, "P"))

; ----------------------------------------------------------------
; Arrows
; ----------------------------------------------------------------

^sc029::fsend("{U+21D4}")	; ⇔ Left Right Double Arrow
!sc029::fsend("{U+21D5}")	; ⇕ Up Down Double Arrow
+sc029::fsend("{U+2195}")	; ↕ Up Down Arrow
sc029::fsend("{U+2194}")	; ↔	Left Right Arrow

+!1::fsend("{U+02C2}")	; ˂ Modifier Letter Left Arrowhead
^1::fsend("{U+21D0}")	; ⇐ Leftwards Double Arrow
!1::fsend("{U+25C1}")	; ◁ White Left-Pointing Triangle
+1::fsend("{U+25C0}")	; ◀ Black Left-Pointing Triangle
1::fsend("{U+2190}")	; ← Leftwards Arrow

+!2::fsend("{U+02C3}")	; ˃ Modifier Letter Right Arrowhead
^2::fsend("{U+21D2}")	; ⇒ Rightwards Double Arrow
!2::fsend("{U+25B7}")	; ▷ White Right-Pointing Triangle 
+2::fsend("{U+25B6}")	; ▶ Black Right-Pointing Triangle
2::fsend("{U+2192}")	; → Rightwards Arrow

+!3::fsend("{U+02C4}")	; ˄ Modifier Letter Up Arrowhead
^3::fsend("{U+21D1}")	; ⇑ Upwards Double Arrow
!3::fsend("{U+25B3}")	; △ White Up-Pointing Triangle
+3::fsend("{U+25B2}")	; ▲ Black Up-Pointing Triangle
3::fsend("{U+2191}")	; ↑ Upwards Arrow

+!4::fsend("{U+02C5}")	; ˅ Modifier Letter Down Arrowhead
^4::fsend("{U+21D3}")	; ⇓ Downwards Double Arrow
!4::fsend("{U+25BD}")	; White Down-Pointing Triangle
+4::fsend("{U+25BC}")	; ▼ Black Down-Pointing Triangle
4::fsend("{U+2193}")	; ↓ Downwards Arrow

!+7::fsend("{U+1FA93}")	; 🪓 Axe
^7::fsend("{U+21BA}")	; ↺ Anticlockwise Open Circle Arrow
!7::fsend("{U+21BB}")	; ↻ Clockwise Open Circle Arrow
+7::fsend("{U+21C5}")	; ⇅ Upwards Arrow Leftwards of Downwards Arrow
7::fsend("{U+21C4}")	; ⇄ Rightwards Arrow Over Leftwards Arrow

; ----------------------------------------------------------------
; Digital row
; ----------------------------------------------------------------

!5::fsend("{U+2731}")	; ✱ Heavy Asterisk
^5::fsend("{U+2744}")	; ❄ Snowflake
+5::fsend("{U+2605}")	; ★ Black Star
5::fsend("{U+2606}")	; ☆ White Star

!+6::fsend("{U+22BB}")	; ⊻ Xor
^6::fsend("{U+2206}")	; ∆ Increment
!6::fsend("{U+2207}")	; ∇ Nabla
+6::fsend("{U+2228}")	; ∨ Logical Or
6::fsend("{U+2227}")	; ∧ Logical And

+8::fsend("{U+221D}")	; ∝ Proportional To
8::fsend("{U+221E}")	; ∞ Infinity

^9::fsend("{U+2282}")	; ⊂ Subset Of
!9::fsend("{U+2284}")	; ⊄ Not a Subset Of
+9::fsend("{U+2209}")	; ∉ Not an Element Of
9::fsend("{U+2208}")	; ∈ Element Of

^0::fsend("{U+2283}")	; ⊃ Superset Of
!0::fsend("{U+2285}")	; ⊅ Not a Superset Of
+0::fsend("{U+220C}")	; ∌ Does Not Contain As Member
0::fsend("{U+220B}")	; ∋ Contains As Member

!+sc00C::fsend("{U+271A}")	; ✚ Heavy Greek Cross
^sc00C::fsend("{U+2716}")	; ✖ Heavy Multiplication X
!sc00C::fsend("{U+2797}")	; ➗ Heavy Division Sign
+sc00C::fsend("{U+2795}")	; ➕ Heavy Plus Sign
sc00C::fsend("{U+2796}")	; ➖ Heavy Minus Sign

^sc00D::fsend("{U+2261}")	; ≡ Identical To
!sc00D::fsend("{U+223C}")	; ∼ Tilde Operator
+sc00D::fsend("{U+2248}")	; ≈ Almost Equal To
sc00D::fsend("{U+2260}")	; ≠ Not Equal To

; ----------------------------------------------------------------
; Other
; ----------------------------------------------------------------

!+q::fsend("{U+21B5}")	; ↵ Downwards Arrow with Corner Leftwards
^q::fsend("{U+21B9}")	; ↹ Leftwards Arrow To Bar Over Rightwards Arrow To Bar
!q::fsend("{U+23CE}")	; ⏎ Return Symbol
+q::fsend("{U+21E7}")	; ⇧ Upwards White Arrow 

!+w::fsend("{U+25A0}")	; ■ Black Square
^w::fsend("{U+26A0}")	; ⚠ Warning Sign
!w::fsend("{U+25A1}")	; □ White Square

!+e::fsend("{U+1F440}")	; 👀 Eyes
^e::fsend("{U+2204}")	; ∄ There Does Not Exist
!e::fsend("{U+2203}")	; ∃ There Exists
+e::fsend("{U+2709}")	; ✉ Envelope

!+r::fsend("{U+29EB}")	; ⧫ Black Lozenge
^r::fsend("{U+2622}")	; ☢ Radioactive Sign
!r::fsend("{U+25CA}")	; ◊ Lozenge

!t::fsend("{U+25FF}")	; ◿ Lower Right Triangle
+t::fsend("{U+20BA}")	; ₺ Turkish Lira Sign

!+y::fsend("{U+2726}")	; ✦ Black Four Pointed Star
^y::fsend("{U+262F}")	; ☯ Yin Yang
!y::fsend("{U+2727}")	; ✧ White Four Pointed Star
y::fsend("{U+267B}")	; ♻ Black Universal Recycling Symbol

+u::fsend("{U+2229}")	; ∩ Intersection
u::fsend("{U+222A}")	; ∪ Union

^i::farr("{U+2695}")	; ⚕ Staff of Aesculapius
!i::fsend("{U+222B}")	; ∫ Integral
+i::fsend("{U+20B9}")	; ₹ Indian Rupee Sign
i::fsend("{U+2139}")	; ℹ Information Source

!+o::fsend("{U+25CF}")	; ● Black Circle
^o::fsend("{U+1F504}")	; 🔄 Anticlockwise Downwards and Upwards Open Circle Arrows
!o::fsend("{U+25CB}")	; ○ White Circle
o::fsend("{U+2205}")	; ∅ Empty Set

!+p::fsend("{U+260E}")	; ☎ Black Telephone
^p::fsend("{U+262E}")	; ☮ Peace Symbol
!p::fsend("{U+260F}")	; ☏ White Telephone
p::fsend("{U+1F4DE}")	; 📞 Telephone Receiver

!sc01A::fsend("{U+27E8}")	; ⟨ Mathematical Left Angle Bracket
+sc01A::fsend("{U+226A}")	; ≪ Much Less-Than

!sc01B::fsend("{U+27E9}")	; ⟩ Mathematical Right Angle Bracket
+sc01B::fsend("{U+226B}")	; ≫ Much Greater-Than

^sc02B::fsend("{U+2224}")	; ∤ Does Not Divide
!sc02B::fsend("{U+27C2}")	; ⟂ Perpendicular
+sc02B::fsend("{U+2225}")	; ∥ Parallel To
sc02B::fsend("{U+2226}")	; ∦ Not Parallel To

!+a::fsend("{U+269B}")	; ⚛ Atom Symbol
^a::fsend("{U+2200}")	; ∀ For All
+a::fsend("{U+2318}")	; ⌘ Place of Interest Sign
!a::fsend("{U+2325}")	; ⌥ Option Key

!+s::fsend("{U+2620}")	; ☠ Skull and Crossbones
^s::fsend("{U+2702}")	; ✂ Black Scissors
!s::fsend("{U+1F571}")	; 🕱 Black Skull and Crossbones

!+d::fsend("{U+25C6}")	; ◆ Black Diamond
!d::fsend("{U+25C7}")	; ◇ White Diamond
^d::fsend("{U+2202}")	; ∂ Partial Differential
+d::fsend("{U+2300}")	; ⌀ Diameter Sign

!+f::fsend("{U+269C}")	; ⚜ Fleur-De-Lis
^f::fsend("{U+1F525}")	; 🔥 Fire
!f::fsend("{U+1F4BE}")	; 💾 Floppy Disk
+f::fsend("{U+2030}")	; ‰ Per Mille Sign

^g::fsend("{U+2699}")	; ⚙ Gear
+g::fsend("{U+2220}")	; ∠ Angle
!g::fsend("{U+221F}")	; ∟ Right Angle

^h::fsend("{U+1F528}")	; 🔨 Hammer
!h::fsend("{U+1F3E0}")	; 🏠 House Building

!+j::fsend("{U+1F4CD}")	; 📍 Round Pushpin
^j::fsend("{U+270F}")	; ✏ Pencil
!j::fsend("{U+1F4CC}")	; 📌 Pushpin
+j::fsend("{U+1F4CE}")	; 📎 Paperclip

^k::fsend("{U+23F0}")	; ⏰ Alarm Clock
!k::fsend("{U+1F512}")	; 🔒 Lock
+k::fsend("{U+1F511}")	; 🔑 Key

^sc028::fsend("{U+20DF}")	; ⃟ Combining Enclosing Diamond
!sc028::fsend("{U+20DE}")	; ⃞ Combining Enclosing Square
+sc028::fsend("{U+20DD}")	; ⃝ Combining Enclosing Circle

^z::fsend("{U+26A1}")	; ⚡ High Voltage Sign
!z::fsend("{U+2264}")	; ≤ Less-Than or Equal To
+z::fsend("{U+2236}")	; ∶ Ratio
z::fsend("{U+00F7}")	; ÷ Division Sign

!+x::fsend("{U+2694}")	; ⚔ Crossed Swords
^x::fsend("{U+2718}")	; ✘ Heavy Ballot X
!x::fsend("{U+2265}")	; ≥ Greater-Than or Equal To
+x::fsend("{U+22C5}")	; ⋅ Dot Operator
x::fsend("{U+00D7}")	; × Multiplication Sign

!+c::fsend("{U+2696}")	; ⚖ Scales
^c::fsend("{U+1F4A5}")	; 💥 Collision Symbol
!c::fsend("{U+2213}")	; ∓ Minus-or-Plus Sign
+c::fsend("{U+00B1}")	; ± Plus minus symbol
c::fsend("{U+2212}")	; − Minus Sign

^v::fsend("{U+2714}")	; ✔ Heavy Check Mark
+v::fsend("{U+221B}")	; ∛ Cube Root
v::fsend("{U+221A}")	; √ Square Root

!+b::fsend("{U+1F4AC}")	; 💬 Speech Balloon
^b::fsend("{U+2623}")	; ☣ Biohazard Sign
!b::fsend("{U+1F338}")	; 🌸 Cherry Blossom
b::fsend("{U+25FE}")	; ◾ Black Medium Small Square

^n::fsend("{U+1F6C7}")	; 🛇 Prohibited Sign
!n::fsend("{U+1F6D1}")	; 🛑 Octagonal Sign
+n::fsend("{U+26D4}")	; ⛔ No Entry

!m::fsend("{U+1F50D}")	; 🔍 Left-Pointing Magnifying Glass

!Backspace::fsend("{U+1F4AF}")	; 💯 Hundred Points Symbol
^Backspace::fsend("{U+FFFD}")	; � Replacement Character
+Backspace::fsend("{U+25CC}")	; ◌ Dotted Circle
Backspace::fsend("{U+232B}")	; ⌫ Erase To the Left

; ----------------------------------------------------------------
; Key combinations for editing while RWin is pressed
; ----------------------------------------------------------------

h::fsend("^+{Left}")	; mark to begin of word
n::fsend("^+{Right}")	; mark to end of word

+m::fsend("+{Home}{Del}")	; delete to begin of line
m::fsend("^{Backspace}")	; delete to begin of word

+sc033::fsend("+{End}{Del}")	; delete to end of line
sc033::fsend("^{Del}")	; ,< delete to begin of next word

+sc034::fsend("^{Left}^{Del}")	; delete whole word
sc034::fsend("{End}+{Home}+{Home}{Del}{Del}")	; delete whole line

j::fsend("^{Left}")	; move left to beginning of previous word
k::fsend("^{Right}")	; move rigth to beginning of next word

sc028::fsend("^{0}")	; '" => Ctrl+0 (Zoom 100%)
sc01A::fsend("^{NumpadSub}")	; [{ => Ctrl + '-' (Zoom-)
sc01B::fsend("^{NumpadAdd}")	; ]} => Ctrl + '+' (Zoom+)


; ----------------------------------------------------------------
; Currency signs
; ----------------------------------------------------------------

+p::fsend("{U+00A3}")	; £ Pound Sign
+h::fsend("{U+20B4}")	; ₴ Ukrainian hryvnia
+y::fsend("{U+00A5}")	; ¥ Yen Sign
+r::fsend("{U+20BD}")	; ₽ Russian ruble
+o::fsend("{U+00A4}")	; ¤ Currency Sign
+s::fsend("{U+20AA}")	; ₪ New Sheqel Sign
+b::fsend("{U+20BF}")	; ₿ Bitcoin Sign
+w::fsend("{U+20A9}")	; ₩ Won Sign

; ----------------------------------------------------------------
; Symbols from digital row
; ----------------------------------------------------------------

q::fsend("{Raw}\")
w::fsend("{Raw}^")
e::fsend("{Raw}&")
r::fsend("{Raw}|")
t::fsend("{Raw}~")
a::fsend("{Raw}@")
s::fsend("{Raw}$")
d::fsend("{Raw}#")
f::fsend("{Raw}%")

; Disable Xbox Game Bar in Windows Settings or change its hotkey 
; if you want to use "`" by the RWin+G key combination

g::fsend("{U+0060}")	; ` Grave Accent

+sc035::fsend("?")
sc035::fsend("/")

#If
