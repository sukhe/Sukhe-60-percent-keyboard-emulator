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


/*

http://www.keyboard-layout-editor.com/##@@_c=#6BD089&fa@:0&:0&:2&:2&:0&:0&:0&:0&:0&:0&:2;;&=~%0A%60%0A%E2%86%95%0A%E2%86%94%0A%0A%0A%0A%0A%0A%E2%87%95%0A%E2%87%94&_f:3;&=!%0A1%0A%E2%97%84%0A%E2%86%90%0A%0A%0A%0A%0A%CB%82%0A%F0%9F%A1%84%0A%E2%87%90&_f:3;&=/@%0A2%0A%E2%96%BA%0A%E2%86%92%0A%0A%0A%0A%0A%CB%83%0A%F0%9F%A1%86%0A%E2%87%92&_f:3;&=#%0A3%0A%E2%96%B2%0A%E2%86%91%0A%0A%0A%0A%0A%CB%84%0A%F0%9F%A1%85%0A%E2%87%91&_f:3;&=$%0A4%0A%E2%96%BC%0A%E2%86%93%0A%0A%0A%0A%0A%CB%85%0A%F0%9F%A1%87%0A%E2%87%93&_c=#B2AA7E&f:3;&=%25%0A5%0A%E2%98%85%0A%E2%98%86%0A%0A%0A%0A%0A%E2%9C%A1%0A%0A%E2%9D%84&_f:3;&=%5E%0A6%0A%E2%88%A8%0A%E2%88%A7%0A%0A%0A%0A%0A%E2%8A%BB%0A%E2%88%87%0A%E2%88%86&_c=#6BD089&f:3;&=/&%0A7%0A%E2%87%85%0A%E2%87%84%0A%0A%0A%0A%0A%0A%E2%86%BB%0A%E2%86%BA&_c=#B2AA7E&f:3;&=*%0A8%0A%E2%88%9D%0A%E2%88%9E%0A%0A%0A%0A%0A%0A%E2%80%A0%0A%E2%80%A1&_f:3;&=(%0A9%0A%E2%8A%84%0A%E2%8A%82%0A%0A%0A%0A%0A%E2%8A%86%0A%E2%88%89%0A%E2%88%88&_f:3;&=)%0A0%0A%E2%8A%85%0A%E2%8A%83%0A%0A%0A%0A%0A%E2%8A%87%0A%E2%88%8C%0A%E2%88%8B&=/_%0A-&_c=#94D8F6&f:3;&=+%0A/=%0A%E2%89%88%0A%E2%89%A0%0A%0A%0A%0A%0A%0A%E2%89%94&_c=#B2AA7E&f:3&w:2;&=Backspace%0A%0A%E2%97%8C%0A%E2%8C%AB;&@_c=#cccccc&w:1.5;&=Tab&_c=#e1e376&t=#000000%0A%0A%0A#ff0000&fa@:0&:0&:2&:4;;&=Q%0A%0A%0A%5C&_fa@:0&:0&:0&:4&:0&:0&:0&:0&:0&:4;;&=W%0A%E2%9A%A0%0A%E2%82%A9%0A%5E%0A%0A%0A%0A%0A%0A%E2%96%A1&_fa@:0&:0&:0&:4;;&=E%0A%E2%88%84%0A%E2%9C%89%0A/&%0A%0A%0A%0A%0A%0A%E2%88%83&=R%0A%E2%98%A2%0A%E2%82%BD%0A%7C&=T%0A%E2%8A%A8%0A%E2%96%B3%0A~%0A%0A%0A%0A%0A%0A%E2%8A%A2&_c=#B2AA7E&t=#000000&fa@:0&:0&:0&:0&:0&:0&:0&:0&:0&:4;;&=Y%0A%0A%C2%A5%0A%E2%98%AF%0A%0A%0A%0A%0A%0A%E2%99%B2&=U%0A%0A%E2%88%A9%0A%E2%88%AA&_f:3;&=I%0A%0A%E2%88%AB%0A%F0%9F%9B%88%0A%0A%0A%0A%0A%0A%E2%89%A1&_f:3;&=O%0A%E2%8A%97%0A%C2%A4%0A%E2%88%85%0A%0A%0A%0A%0A%E2%8A%96%0A%E2%8A%95&=P%0A%E2%98%AE%0A%C2%A3%0A%F0%9F%93%9E%0A%0A%0A%0A%0A%E2%98%8F&_c=#F6B168&fa@:0&:0&:0&:2;;&=%7B%0A%5B%0A%E2%89%AA%0ACtrl%20-%0A%0A%0A%0A%0A%0A%E2%9F%A8&=%7D%0A%5D%0A%E2%89%AB%0ACtrl%20+%0A%0A%0A%0A%0A%0A%E2%9F%A9&_c=#B2AA7E&w:1.5;&=%7C%0A%5C%0A%E2%88%A5%0A%E2%88%A6%0A%0A%0A%0A%0A%E2%9F%82;&@_c=#cccccc&w:1.75;&=Caps%20Lock&_c=#e1e376&t=#000000%0A%0A%0A#ff0000;&=A%0A%E2%88%80%0A%E2%8C%98%0A/@%0A%0A%0A%0A%0A%0A%E2%8C%A5&_fa@:0&:0&:0&:2&:0&:0&:0&:0&:0&:4;;&=S%0A%E2%9C%82%0A%E2%82%AA%0A$%0A%0A%0A%0A%0A%0A%F0%9F%95%B1&=D%0A%E2%88%82%0A%E2%8C%80%0A#&_fa@:0&:0&:0&:4;;&=F%0A%0A%E2%80%B0%0A%25&=G%0A%0A%E2%8F%9A%0A%60&_c=#4f9ce3&t=#000000&fa@:0&:0&:0&:1&:0&:0&:0;;&=H%0A%0A%E2%82%B4%0ACtrlSh%20%E2%97%84&=J%0A%0A%0ACtrl%20%E2%97%84&=K%0A%0A%0ACtrl%20%E2%96%BA&_c=#cccccc;&=L&_c=#B2AA7E;&=/:%0A/;&_c=#F6B168&fa@:0&:1&:0&:2;;&=%22%0A'%0A%0ACtrl%200&_c=#cccccc&w:2.25;&=Enter;&@_w:2.25;&=Shift&_c=#94D8F6&fa@:0&:1&:0&:4;;&=Z%0A%0A%E2%88%B6%0A%C3%B7%0A%0A%0A%0A%0A%0A%E2%89%A4&_fa@:0&:0&:0&:4&:0&:0&:0&:0&:0;;&=X%0A%E2%9D%8C%0A%C2%B7%0A%C3%97%0A%0A%0A%0A%0A%E2%88%97%0A%E2%89%A5&=C%0A%0A%C2%B1%0A%E2%88%92%0A%0A%0A%0A%0A%E2%88%93&_c=#B2AA7E;&=V%0A%E2%9C%85%0A%E2%88%9B%0A%E2%88%9A&_fa@:0&:4&:0&:4;;&=B%0A%E2%98%A3%0A%E2%82%BF%0A%E2%97%BE&_c=#4f9ce3&fa@:0&:4&:0&:1;;&=N%0A%0A%E2%99%AA%0ACtrlSh%E2%96%BA&_c=#eb6a80;&=M%0A%0A%0ACtrl%20BS%0A%0A%0A%0A%0A%0A%F0%9F%94%8D&_fa@:0&:0&:0&:1;;&=%3C%0A,%0A%0ACtrl%20Del&=%3E%0A.&_c=#B2AA7E&f:3;&=?%0A//%0A?%0A//&_c=#cccccc&w:2.75;&=Shift;&@_w:1.25;&=Ctrl&_w:1.25;&=Win&_w:1.25;&=Alt&_a:7&w:6.25;&=&_a:4&w:1.25;&=Alt&_c=#777777&t=#ffffff&w:1.25;&=Win&_c=#cccccc&t=#000000&w:1.25;&=Menu&_w:1.25;&=Ctrl

space

http://www.keyboard-layout-editor.com/##@_name=Sukhe%2060%20percent%20keyboard%20-%20Space%20layer&author=Oleg%20Sukhonos;&@_c=#e1e376&fa@:0&:0&:6&:6;;&=~%0A%C2%AA%0A%CA%BB%0A%CA%BC%0A%0A%0A%60%0A%0A%0A%C2%BA&_c=#B2AA7E&f:3;&=!%0A1%0A%0AF1&_f:3;&=/@%0A2%0A%0AF2&_f:3;&=#%0A3%0A%0AF3&_f:3;&=$%0A4%0A%0AF4&_f:3;&=%25%0A5%0A%0AF5&_f:3;&=%5E%0A6%0A%0AF6&_f:3;&=/&%0A7%0A%0AF7&_f:3;&=*%0A8%0A%0AF8&_f:3;&=(%0A9%0A%0AF9&_f:3;&=)%0A0%0A%0AF10&_f:3;&=/_%0A-%0A%0AF11&_f:3;&=+%0A/=%0A%0AF12&_c=#e087d7&f:3&w:2;&=Backspace%0A%0A%0APrintScreen;&@_c=#cccccc&w:1.5;&=Tab&_c=#e1e376&fa@:0&:0&:6&:0&:0&:0&:0&:0&:0&:0;;&=Q%0A%E2%80%BC%0A%E2%80%B9%0A%7B%0A%0A%0A%0A%0A%0A%E2%81%88&=W%0A%0A%E2%80%BA%0A%7D%0A%0A%0A%0A%0A%0A%E2%80%B8&_fa@:0&:0&:8&:4;;&=E%0A%0A%E2%80%9A%0A/_%0A%0A%0A%0A%0A%0A%E2%82%AC&_fa@:0&:0&:8&:0&:0&:0&:0&:0&:0&:1;;&=R%0A%C2%AE%0A%E2%80%98%0A!%0A%0A%0A%0A%0A%0AF%E2%80%92&_fa@:0&:0&:8&:1&:0&:0&:0&:0&:0&:8;;&=T%0A%E2%84%A2%0A%E2%80%99%0ANB%E2%80%91%0A%0A%0A%0A%0A%0A%C2%AD%C2%AD&_fa@:0&:1&:1&:1&:0&:0&:0&:0&:0&:1;;&=Y%0A3M%E2%80%94%0AHB%E2%80%95%0AN%E2%80%93%0A%0A%0A%0A%0A%0A2M%E2%80%94&_c=#6BD089&f:3;&=U%0A%0A%0AHome&_f:3;&=I%0A%0A%0A%E2%96%B2&_f:3;&=O%0A%0A%0AEnd&_f:3;&=P%0A%0A%0APgUp&_c=#e087d7&f:3;&=%7B%0A%5B%0A%0AIns&_f:3;&=%7D%0A%5D%0A%0AScroll%20Lock&_f:3&w:1.5;&=%7C%0A%5C%0A%0ABreak;&@_c=#cccccc&t=#000000%0A%0A%0A%0A%0A%0A%0A%0A%0A%0A#ff0000&w:1.75;&=CapsLock%0A%0A%0A%0A%0A%0A%0A%0A%0A%0AESC&_c=#e1e376&t=#000000&fa@:0&:0&:6;;&=A%0A%E2%80%BB%0A%C2%AB%0A(%0A%0A%0A%0A%0A%0A%E2%83%B0&=S%0A%C2%B6%0A%C2%BB%0A)%0A%0A%0A%0A%0A%0A%C2%A7&_fa@:0&:6&:6&:0&:0&:0&:0&:0&:0&:6;;&=D%0A%C2%B7%0A%E2%80%9E%0A%5B%0A%0A%0A%0A%0A%0A%E3%80%83&_f2:6;&=F%0A%0A%E2%80%9C%0A%5D%0A%0A%0A%0A%0A%0A%C6%92&_fa@:0&:6&:6&:1;;&=G%0A%0A%E2%80%9D%0AM%E2%80%94&_c=#ebb323&f:3;&=H%0A%0A%0AEnter&_c=#6BD089&f:3&n:true;&=J%0A%0A%0A%E2%97%84&_f:3;&=K%0A%0A%0A%E2%96%BC&_f:3;&=L%0A%0A%0A%E2%96%BA&_f:3;&=/:%0A/;%0A%0APgDn&_c=#ebb323&f:3;&=%22%0A'%0A%0AEsc&_c=#cccccc&w:2.25;&=Enter;&@_w:2.25;&=Shift&_c=#eb6a80;&=Z%0A%0A%0AUndo%0A%0A%0A%0A%0A%0A%C2%B0&_c=#94D8F6&f:3;&=X%0A%0A%E2%9C%97%0A%3Ci%20class/='fa%20fa-volume-off'%3E%3C//i%3E%0A%3Ci%20class/='fa%20fa-play'%3E%3C//i%3E%3Ci%20class/='fa%20fa-pause'%3E%3C//i%3E%0A%0A%0A%0A%0A%E2%80%B2&_f:3;&=C%0A%C2%A9%0A%C2%A2%0A%3Ci%20class/='fa%20fa-volume-down'%3E%3C//i%3E%0A%3Ci%20class/='fa%20fa-backward'%3E%3C//i%3E%0A%0A%0A%0A%0A%E2%80%B3&_f:3;&=V%0A%0A%E2%9C%93%0A%3Ci%20class/='fa%20fa-volume-up'%3E%3C//i%3E%0A%3Ci%20class/='fa%20fa-forward'%3E%3C//i%3E%0A%0A%0A%0A%0A%E2%80%B4&_c=#eb6a80&fa@:0&:0&:0&:1&:0&:0&:0&:0&:0&:0;;&=B%0A%E2%81%83%0A%E2%80%A2%0ASel%20All%0A%E2%80%A3%0A%0A%0A%0A%0A%E2%97%A6&_fa@:0&:0&:0&:1&:0&:0&:0&:0&:0&:2;;&=N%0A%C2%AC%0A%0ACopy%0A%0A%0A%0A%0A%0A%E2%84%96&_c=#ebb323;&=M%0A%0A%0ABacksp&=%3C%0A,%0A%0ADel&_c=#eb6a80&fa@:0&:0&:0&:1&:0&:0&:5;;&=%3E%0A%E2%81%9D%0A%0ACut%0A%E2%80%A4%0A%0A.%0A%0A%0A%E2%80%A6&_fa@:0&:0&:0&:1;;&=?%0A%C2%A1%0A%0APaste%0A%0A%0A//%0A%0A%0A%C2%BF&_c=#cccccc&w:2.75;&=Shift;&@_w:1.25;&=Ctrl&_w:1.25;&=Win&_w:1.25;&=Alt&_c=#777777&t=#FFFFFF&a:7&w:6.25;&=Space&_c=#cccccc&t=#000000&a:4&w:1.25;&=Alt&_c=#e087d7&f:3&w:1.25;&=Win%0A%0A%0ANumLock&_c=#cccccc&w:1.25;&=Menu&_w:1.25;&=Ctrl


27,03,2022

rwin

http://www.keyboard-layout-editor.com/##@@_c=#6BD089&fa@:0&:0&:2&:2&:0&:0&:0&:0&:0&:0&:2;;&=~%0A%60%0A%E2%86%95%0A%E2%86%94%0A%0A%0A%0A%0A%0A%E2%87%95%0A%E2%87%94&_f:3;&=!%0A1%0A%E2%97%80%0A%E2%86%90%0A%0A%0A%0A%0A%CB%82%0A%E2%97%81%0A%E2%87%90&_f:3;&=/@%0A2%0A%E2%96%B6%0A%E2%86%92%0A%0A%0A%0A%0A%CB%83%0A%E2%96%B7%0A%E2%87%92&_f:3;&=#%0A3%0A%E2%96%B2%0A%E2%86%91%0A%0A%0A%0A%0A%CB%84%0A%E2%96%B3%0A%E2%87%91&_f:3;&=$%0A4%0A%E2%96%BC%0A%E2%86%93%0A%0A%0A%0A%0A%CB%85%0A%E2%96%BD%0A%E2%87%93&_c=#B2AA7E&f:3;&=%25%0A5%0A%E2%98%85%0A%E2%98%86%0A%0A%0A%0A%0A%E2%9C%A1%0A%E2%9D%84%0A%E2%9C%B1&_f:3;&=%5E%0A6%0A%E2%88%A8%0A%E2%88%A7%0A%0A%0A%0A%0A%E2%8A%BB%0A%E2%88%87%0A%E2%88%86&_c=#6BD089&f:3;&=/&%0A7%0A%E2%87%85%0A%E2%87%84%0A%0A%0A%0A%0A%0A%E2%86%BB%0A%E2%86%BA&_c=#B2AA7E&f:3;&=*%0A8%0A%E2%88%9D%0A%E2%88%9E%0A%0A%0A%0A%0A%E2%80%A1%0A%E2%80%A0%0A%E2%9C%9A&_f:3;&=(%0A9%0A%E2%8A%84%0A%E2%8A%82%0A%0A%0A%0A%0A%0A%E2%88%89%0A%E2%88%88&_f:3;&=)%0A0%0A%E2%8A%85%0A%E2%8A%83%0A%0A%0A%0A%0A%0A%E2%88%8C%0A%E2%88%8B&=/_%0A-&_c=#94D8F6&f:3;&=+%0A/=%0A%E2%89%88%0A%E2%89%A0%0A%0A%0A%0A%0A%0A%E2%88%BC%0A%E2%89%A1&_c=#B2AA7E&f:3&w:2;&=Backspace%0A%0A%E2%97%8C%0A%E2%8C%AB;&@_c=#cccccc&w:1.5;&=Tab&_c=#e1e376&t=#000000%0A%0A%0A#ff0000&fa@:0&:0&:0&:4;;&=Q%0A%E2%86%B9%0A%E2%87%A7%0A%5C%0A%0A%0A%0A%0A%E2%86%B5%0A%E2%8F%8E&_fa@:0&:0&:0&:4&:0&:0&:0&:0&:0&:4;;&=W%0A%E2%9A%A0%0A%E2%82%A9%0A%5E%0A%0A%0A%0A%0A%E2%96%A0%0A%E2%96%A1&_fa@:0&:0&:0&:4;;&=E%0A%E2%88%84%0A%E2%9C%89%0A/&%0A%0A%0A%0A%0A%0A%E2%88%83&=R%0A%E2%98%A2%0A%E2%82%BD%0A%7C%0A%0A%0A%0A%0A%E2%A7%AB%0A%E2%97%8A&=T%0A%0A%E2%97%BF%0A~&_c=#B2AA7E&t=#000000&fa@:0&:0&:0&:0&:0&:0&:0&:0&:0&:4;;&=Y%0A%E2%98%AF%0A%C2%A5%0A%E2%99%BB%0A%0A%0A%0A%0A%E2%9C%A6%0A%E2%9C%A7&=U%0A%0A%E2%88%A9%0A%E2%88%AA&=I%0A%0A%E2%88%AB%0A%F0%9F%9B%88&_f:3;&=O%0A%0A%C2%A4%0A%E2%88%85%0A%0A%0A%0A%0A%E2%97%8F%0A%E2%97%8B&_f:3;&=P%0A%E2%98%AE%0A%C2%A3%0A%F0%9F%93%9E%0A%0A%0A%0A%0A%F0%9F%95%BF%0A%E2%98%8F&_c=#F6B168&fa@:0&:0&:0&:2;;&=%7B%0A%5B%0A%E2%89%AA%0ACtrl%20-%0A%0A%0A%0A%0A%0A%E2%9F%A8&=%7D%0A%5D%0A%E2%89%AB%0ACtrl%20+%0A%0A%0A%0A%0A%0A%E2%9F%A9&_c=#B2AA7E&w:1.5;&=%7C%0A%5C%0A%E2%88%A5%0A%E2%88%A6%0A%0A%0A%0A%0A%E2%9F%82;&@_c=#cccccc&w:1.75;&=Caps%20Lock&_c=#e1e376&t=#000000%0A%0A%0A#ff0000;&=A%0A%E2%88%80%0A%E2%8C%98%0A/@%0A%0A%0A%0A%0A%0A%E2%8C%A5&_fa@:0&:0&:0&:2&:0&:0&:0&:0&:0&:4;;&=S%0A%E2%9C%82%0A%E2%82%AA%0A$%0A%0A%0A%0A%0A%0A%F0%9F%95%B1&_fa@:0&:0&:0&:2;;&=D%0A%E2%88%82%0A%E2%8C%80%0A#%0A%0A%0A%0A%0A%E2%97%86%0A%E2%97%87&_fa@:0&:0&:0&:4;;&=F%0A%0A%E2%80%B0%0A%25&=G%0A%0A%E2%88%A0%0A%60%0A%0A%0A%0A%0A%0A%E2%88%9F&_c=#4f9ce3&t=#000000&fa@:0&:0&:0&:1;;&=H%0A%0A%E2%82%B4%0ACtrlSh%20%E2%97%84&=J%0A%0A%0ACtrl%20%E2%97%84&=K%0A%0A%0ACtrl%20%E2%96%BA&_c=#cccccc;&=L&_c=#B2AA7E&f:3;&=/:%0A/;%0A%E2%99%A6%0A%E2%99%A5%0A%0A%0A%0A%0A%E2%99%A3%0A%0A%E2%99%A0&_c=#F6B168&fa@:0&:1&:0&:2;;&=%22%0A'%0A%0ACtrl%200&_c=#cccccc&w:2.25;&=Enter;&@_w:2.25;&=Shift&_c=#94D8F6&fa@:0&:1&:0&:4;;&=Z%0A%0A%E2%88%B6%0A%C3%B7%0A%0A%0A%0A%0A%0A%E2%89%A4&_fa@:0&:0&:0&:4;;&=X%0A%E2%9D%8C%0A%C2%B7%0A%C3%97%0A%0A%0A%0A%0A%E2%88%97%0A%E2%89%A5&=C%0A%0A%C2%B1%0A%E2%88%92%0A%0A%0A%0A%0A%E2%88%93&_c=#B2AA7E;&=V%0A%E2%9C%85%0A%E2%88%9B%0A%E2%88%9A&_fa@:0&:4&:0&:4;;&=B%0A%E2%98%A3%0A%E2%82%BF%0A%E2%97%BE&_c=#4f9ce3&fa@:0&:4&:0&:1;;&=N%0A%0A%E2%99%AA%0ACtrlSh%E2%96%BA&_c=#eb6a80;&=M%0A%0A%0ACtrl%20BS%0A%0A%0A%0A%0A%0A%F0%9F%94%8D&_fa@:0&:0&:0&:1;;&=%3C%0A,%0A%0ACtrl%20Del&=%3E%0A.&_c=#B2AA7E&f:3;&=?%0A//%0A?%0A//&_c=#cccccc&w:2.75;&=Shift;&@_w:1.25;&=Ctrl&_w:1.25;&=Win&_w:1.25;&=Alt&_a:7&w:6.25;&=&_a:4&w:1.25;&=Alt&_c=#777777&t=#ffffff&w:1.25;&=Win&_c=#cccccc&t=#000000&w:1.25;&=Menu&_w:1.25;&=Ctrl

*/

/*


http://www.keyboard-layout-editor.com/##@@_c=#6BD089&fa@:0&:0&:2&:2&:0&:0&:0&:0&:0&:0&:2;;&=~%0A%60%0A%E2%86%95%0A%E2%86%94%0A%0A%0A%0A%0A%0A%E2%87%95%0A%E2%87%94&_f:3;&=!%0A1%0A%E2%97%80%0A%E2%86%90%0A%0A%0A%0A%0A%CB%82%0A%E2%97%81%0A%E2%87%90&_f:3;&=/@%0A2%0A%E2%96%B6%0A%E2%86%92%0A%0A%0A%0A%0A%CB%83%0A%E2%96%B7%0A%E2%87%92&_f:3;&=#%0A3%0A%E2%96%B2%0A%E2%86%91%0A%0A%0A%0A%0A%CB%84%0A%E2%96%B3%0A%E2%87%91&_f:3;&=$%0A4%0A%E2%96%BC%0A%E2%86%93%0A%0A%0A%0A%0A%CB%85%0A%E2%96%BD%0A%E2%87%93&_c=#B2AA7E&f:3;&=%25%0A5%0A%E2%98%85%0A%E2%98%86%0A%0A%0A%0A%0A%E2%9C%A1%0A%E2%9D%84%0A%E2%9C%B1&_f:3;&=%5E%0A6%0A%E2%88%A8%0A%E2%88%A7%0A%0A%0A%0A%0A%E2%8A%BB%0A%E2%88%87%0A%E2%88%86&_c=#6BD089&f:3;&=/&%0A7%0A%E2%87%85%0A%E2%87%84%0A%0A%0A%0A%0A%0A%E2%86%BB%0A%E2%86%BA&_c=#B2AA7E&f:3;&=*%0A8%0A%E2%88%9D%0A%E2%88%9E%0A%0A%0A%0A%0A%E2%80%A1%0A%E2%80%A0%0A%E2%9C%9A&_f:3;&=(%0A9%0A%E2%8A%84%0A%E2%8A%82%0A%0A%0A%0A%0A%0A%E2%88%89%0A%E2%88%88&_f:3;&=)%0A0%0A%E2%8A%85%0A%E2%8A%83%0A%0A%0A%0A%0A%0A%E2%88%8C%0A%E2%88%8B&=/_%0A-&_c=#94D8F6&f:3;&=+%0A/=%0A%E2%89%88%0A%E2%89%A0%0A%0A%0A%0A%0A%0A%E2%88%BC%0A%E2%89%A1&_c=#B2AA7E&f:3&w:2;&=Backspace%0A%0A%E2%97%8C%0A%E2%8C%AB;&@_c=#cccccc&w:1.5;&=Tab&_c=#e1e376&t=#000000%0A%0A%0A#ff0000&fa@:0&:0&:0&:4;;&=Q%0A%E2%86%B9%0A%E2%87%A7%0A%5C%0A%0A%0A%0A%0A%E2%86%B5%0A%E2%8F%8E&_fa@:0&:0&:0&:4&:0&:0&:0&:0&:0&:4;;&=W%0A%E2%9A%A0%0A%E2%82%A9%0A%5E%0A%0A%0A%0A%0A%E2%96%A0%0A%E2%96%A1&_fa@:0&:0&:0&:4;;&=E%0A%E2%88%84%0A%E2%9C%89%0A/&%0A%0A%0A%0A%0A%0A%E2%88%83&=R%0A%E2%98%A2%0A%E2%82%BD%0A%7C%0A%0A%0A%0A%0A%E2%A7%AB%0A%E2%97%8A&=T%0A%0A%E2%97%BF%0A~&_c=#B2AA7E&t=#000000&fa@:0&:0&:0&:0&:0&:0&:0&:0&:0&:4;;&=Y%0A%E2%98%AF%0A%C2%A5%0A%E2%99%BB%0A%0A%0A%0A%0A%E2%9C%A6%0A%E2%9C%A7&=U%0A%0A%E2%88%A9%0A%E2%88%AA&=I%0A%0A%E2%88%AB%0A%F0%9F%9B%88&_f:3;&=O%0A%0A%C2%A4%0A%E2%88%85%0A%0A%0A%0A%0A%E2%97%8F%0A%E2%97%8B&_f:3;&=P%0A%E2%98%AE%0A%C2%A3%0A%E2%84%97%0A%0A%0A%0A%0A%F0%9F%95%BF%0A%E2%98%8F&_c=#F6B168&fa@:0&:0&:0&:2;;&=%7B%0A%5B%0A%E2%89%AA%0ACtrl%20-%0A%0A%0A%0A%0A%0A%E2%9F%A8&=%7D%0A%5D%0A%E2%89%AB%0ACtrl%20+%0A%0A%0A%0A%0A%0A%E2%9F%A9&_c=#B2AA7E&w:1.5;&=%7C%0A%5C%0A%E2%88%A5%0A%E2%88%A6%0A%0A%0A%0A%0A%E2%9F%82;&@_c=#cccccc&w:1.75;&=Caps%20Lock&_c=#e1e376&t=#000000%0A%0A%0A#ff0000;&=A%0A%E2%88%80%0A%E2%8C%98%0A/@%0A%0A%0A%0A%0A%0A%E2%8C%A5&_fa@:0&:0&:0&:2&:0&:0&:0&:0&:0&:4;;&=S%0A%E2%9C%82%0A%E2%82%AA%0A$%0A%0A%0A%0A%0A%0A%F0%9F%95%B1&_fa@:0&:0&:0&:2;;&=D%0A%E2%88%82%0A%E2%8C%80%0A#%0A%0A%0A%0A%0A%E2%97%86%0A%E2%97%87&_fa@:0&:0&:0&:4;;&=F%0A%F0%9F%94%A5%EF%B8%8E%0A%E2%80%B0%0A%25&=G%0A%0A%E2%88%A0%0A%60%0A%0A%0A%0A%0A%0A%E2%88%9F&_c=#4f9ce3&t=#000000&fa@:0&:0&:0&:1;;&=H%0A%0A%E2%82%B4%0ACtrlSh%20%E2%97%84&=J%0A%E2%83%9F%0A%E2%83%9D%0ACtrl%20%E2%97%84%0A%0A%0A%0A%0A%0A%E2%83%9E&=K%0A%0A%0ACtrl%20%E2%96%BA&_c=#cccccc;&=L&_c=#B2AA7E&f:3;&=/:%0A/;%0A%E2%99%A6%0A%E2%99%A5%0A%0A%0A%0A%0A%E2%99%A3%0A%0A%E2%99%A0&_c=#F6B168&fa@:0&:1&:0&:2;;&=%22%0A'%0A%0ACtrl%200&_c=#cccccc&w:2.25;&=Enter;&@_w:2.25;&=Shift&_c=#94D8F6&fa@:0&:1&:0&:4;;&=Z%0A%0A%E2%88%B6%0A%C3%B7%0A%0A%0A%0A%0A%0A%E2%89%A4&_fa@:0&:0&:0&:4;;&=X%0A%E2%9D%8C%EF%B8%8E%0A%C2%B7%0A%C3%97%0A%0A%0A%0A%0A%E2%88%97%0A%E2%89%A5&=C%0A%F0%9F%92%A5%EF%B8%8E%0A%C2%B1%0A%E2%88%92%0A%0A%0A%0A%0A%E2%88%93&_c=#B2AA7E;&=V%0A%E2%9C%85%EF%B8%8E%0A%E2%88%9B%0A%E2%88%9A&_fa@:0&:4&:0&:4;;&=B%0A%E2%98%A3%0A%E2%82%BF%0A%E2%97%BE&_c=#4f9ce3&fa@:0&:4&:0&:1;;&=N%0A%0A%E2%99%AA%0ACtrlSh%E2%96%BA%0A%0A%0A%0A%0A%0A%F0%9F%93%9E%EF%B8%8E&_c=#eb6a80;&=M%0A%0A%0ACtrl%20BS%0A%0A%0A%0A%0A%0A%F0%9F%94%8D%EF%B8%8E&_fa@:0&:0&:0&:1;;&=%3C%0A,%0A%0ACtrl%20Del&=%3E%0A.&_c=#B2AA7E&f:3;&=?%0A//%0A?%0A//&_c=#cccccc&w:2.75;&=Shift;&@_w:1.25;&=Ctrl&_w:1.25;&=Win&_w:1.25;&=Alt&_a:7&w:6.25;&=&_a:4&w:1.25;&=Alt&_c=#777777&t=#ffffff&w:1.25;&=Win&_c=#cccccc&t=#000000&w:1.25;&=Menu&_w:1.25;&=Ctrl


http://www.keyboard-layout-editor.com/##@@=~%0A%60&=!&=/@&=#&=$&=%25%0A5&=%5E%0A6&=/&%0A7&=*%0A8&=(%0A9&=)%0A0&=/_%0A-&=+%0A/=&_w:2;&=Backspace;&@_w:1.5;&=Tab&_c=#cccca0;&=Q%0A%F0%9F%A1%BC%0A%E2%AE%A6%0A%E2%AE%A3%0A%0A%0A%0A%0A%E2%AE%B6&=W%0A%F0%9F%A1%B9%0A%F0%9F%A1%85%0A%E2%AE%8F%0A%0A%0A%0A%0A%E2%AE%B4&=E%0A%F0%9F%A1%BD%0A%E2%AE%A2%0A%E2%AE%A7%0A%0A%0A%0A%0A%E2%AE%B2&_c=#a0a0cc;&=R&_c=#cca0cc;&=T&=Y&_c=#cccccc;&=U&=I&=O&=P&=%7B%0A%5B&=%7D%0A%5D&_w:1.5;&=%7C%0A%5C;&@_w:1.75;&=Caps%20Lock&_c=#cccca0;&=A%0A%F0%9F%A1%B8%0A%F0%9F%A1%84%0A%E2%AE%8E%0A%0A%0A%0A%0A%E2%AE%B0&_c=#ebaf8d;&=S&_c=#cccca0;&=D%0A%F0%9F%A1%BA%0A%F0%9F%A1%86%0A%E2%AE%8C%0A%0A%0A%0A%0A%E2%AE%B3&_c=#a0a0cc;&=F&_c=#ebaf8d;&=G&_c=#a0cccc;&=H&_c=#cccccc;&=J&=K&=L&=/:%0A/;&=%22%0A'&_w:2.25;&=Enter;&@_w:2.25;&=Shift&_c=#cccca0;&=Z%0A%F0%9F%A1%BF%0A%E2%AE%A1%0A%E2%AE%A4%0A%0A%0A%0A%0A%E2%AE%B1&=X%0A%F0%9F%A1%BB%0A%F0%9F%A1%87%0A%E2%AE%8D%0A%0A%0A%0A%0A%E2%AE%B7&=C%0A%F0%9F%A1%BE%0A%E2%AE%A5%0A%E2%AE%A0%0A%0A%0A%0A%0A%E2%AE%B5&_c=#a0cca0;&=V&=B&_c=#a0cccc;&=N&_c=#cccccc;&=M&=%3C%0A,&=%3E%0A.&=?%0A//&_w:2.75;&=Shift;&@_w:1.25;&=Ctrl&_w:1.25;&=Win&_w:1.25;&=Alt&_a:7&w:6.25;&=&_a:4&w:1.25;&=Alt&_w:1.25;&=Win&_w:1.25;&=Menu&_w:1.25;&=Ctrl


30.03.2022 RWin

http://www.keyboard-layout-editor.com/##@@_c=#6BD089&fa@:0&:0&:2&:2&:0&:0&:0&:0&:0&:0&:2;;&=~%0A%60%0A%E2%86%95%0A%E2%86%94%0A%0A%0A%0A%0A%0A%E2%87%95%0A%E2%87%94&_f:3;&=!%0A1%0A%E2%97%80%0A%E2%86%90%0A%0A%0A%0A%0A%CB%82%0A%E2%97%81%0A%E2%87%90&_f:3;&=/@%0A2%0A%E2%96%B6%0A%E2%86%92%0A%0A%0A%0A%0A%CB%83%0A%E2%96%B7%0A%E2%87%92&_f:3;&=#%0A3%0A%E2%96%B2%0A%E2%86%91%0A%0A%0A%0A%0A%CB%84%0A%E2%96%B3%0A%E2%87%91&_f:3;&=$%0A4%0A%E2%96%BC%0A%E2%86%93%0A%0A%0A%0A%0A%CB%85%0A%E2%96%BD%0A%E2%87%93&_c=#B2AA7E&f:3;&=%25%0A5%0A%E2%98%85%0A%E2%98%86%0A%0A%0A%0A%0A%F0%9F%95%B8%0A%E2%9C%B1%0A%E2%9D%84&_f:3;&=%5E%0A6%0A%E2%88%A8%0A%E2%88%A7%0A%0A%0A%0A%0A%E2%8A%BB%0A%E2%88%87%0A%E2%88%86&_c=#6BD089&f:3;&=/&%0A7%0A%E2%87%85%0A%E2%87%84%0A%0A%0A%0A%0A%0A%E2%86%BB%0A%E2%86%BA&_c=#B2AA7E&f:3;&=*%0A8%0A%E2%88%9D%0A%E2%88%9E%0A%0A%0A%0A%0A%E2%9C%9A%0A%E2%80%A0%0A%E2%80%A1&_f:3;&=(%0A9%0A%E2%88%89%0A%E2%88%88%0A%0A%0A%0A%0A%0A%E2%8A%84%0A%E2%8A%82&_f:3;&=)%0A0%0A%E2%88%8C%0A%E2%88%8B%0A%0A%0A%0A%0A%0A%E2%8A%85%0A%E2%8A%83&_fa@:0&:0&:2&:2&:0&:0&:0&:0&:0&:2&:2;;&=/_%0A-%0A%E2%9E%95%0A%E2%9E%96%0A%0A%0A%0A%0A%0A%E2%9E%97%0A%E2%9C%96%EF%B8%8F&_c=#94D8F6&f:3;&=+%0A/=%0A%E2%89%88%0A%E2%89%A0%0A%0A%0A%0A%0A%0A%E2%88%BC%0A%E2%89%A1&_c=#B2AA7E&f:3&w:2;&=Backspace%0A%0A%E2%97%8C%0A%E2%8C%AB;&@_c=#cccccc&w:1.5;&=Tab&_c=#e1e376&t=#000000%0A%0A%0A#ff0000&fa@:0&:0&:0&:4;;&=Q%0A%E2%86%B9%0A%E2%87%A7%0A%5C%0A%0A%0A%0A%0A%E2%86%B5%0A%E2%8F%8E&_fa@:0&:0&:0&:4&:0&:0&:0&:0&:0&:4;;&=W%0A%E2%9A%A0%0A%E2%82%A9%0A%5E%0A%0A%0A%0A%0A%E2%96%A0%0A%E2%96%A1&_fa@:0&:0&:0&:4&:0&:0&:0&:0&:2;;&=E%0A%E2%88%84%0A%E2%9C%89%0A/&%0A%0A%0A%0A%0A%F0%9F%91%80%0A%E2%88%83&_fa@:0&:0&:0&:4;;&=R%0A%E2%98%A2%EF%B8%8F%0A%E2%82%BD%0A%7C%0A%0A%0A%0A%0A%E2%A7%AB%0A%E2%97%8A&=T%0A%F0%9F%9B%87%EF%B8%8F%0A%E2%97%BF%0A~%0A%0A%0A%0A%0A%0A%E2%9B%94&_c=#B2AA7E&t=#000000&fa@:0&:0&:0&:0&:0&:0&:0&:0&:0&:4;;&=Y%0A%E2%98%AF%0A%C2%A5%0A%E2%99%BB%0A%0A%0A%0A%0A%E2%9C%A6%0A%E2%9C%A7&=U%0A%0A%E2%88%A9%0A%E2%88%AA&=I%0A%0A%E2%88%AB%0A%E2%84%B9&_f:3;&=O%0A%F0%9F%94%84%0A%C2%A4%0A%E2%88%85%0A%0A%0A%0A%0A%E2%97%8F%0A%E2%97%8B&_f:3;&=P%0A%E2%98%AE%0A%C2%A3%0A%F0%9F%93%9E%0A%0A%0A%0A%0A%F0%9F%95%BF%0A%E2%98%8F&_c=#F6B168&fa@:0&:0&:0&:2;;&=%7B%0A%5B%0A%E2%89%AA%0ACtrl%20-%0A%0A%0A%0A%0A%0A%E2%9F%A8&=%7D%0A%5D%0A%E2%89%AB%0ACtrl%20+%0A%0A%0A%0A%0A%0A%E2%9F%A9&_c=#B2AA7E&w:1.5;&=%7C%0A%5C%0A%E2%88%A5%0A%E2%88%A6%0A%0A%0A%0A%0A%E2%9F%82;&@_c=#cccccc&w:1.75;&=Caps%20Lock&_c=#e1e376&t=#000000%0A%0A%0A#ff0000&fa@:0&:0&:0&:4;;&=A%0A%E2%88%80%0A%E2%8C%98%0A/@%0A%0A%0A%0A%0A%E2%9A%9B%0A%E2%8C%A5&_fa@:0&:0&:0&:4&:0&:0&:0&:0&:0&:4;;&=S%0A%E2%9C%82%0A%E2%82%AA%0A$%0A%0A%0A%0A%0A%E2%98%A0%0A%F0%9F%95%B1&_fa@:0&:0&:0&:4;;&=D%0A%E2%88%82%0A%E2%8C%80%0A#%0A%0A%0A%0A%0A%E2%97%86%0A%E2%97%87&=F%0A%F0%9F%94%A5%0A%E2%80%B0%0A%25&=G%0A%E2%9A%99%EF%B8%8F%0A%E2%88%A0%0A%60%0A%0A%0A%0A%0A%0A%E2%88%9F&_c=#4f9ce3&t=#000000&fa@:0&:0&:0&:1;;&=H%0A%0A%E2%82%B4%0ACtrlSh%20%E2%97%84&_fa@:0&:2&:1&:1&:0&:0&:0&:0&:0&:2;;&=J%0A%E2%9C%8F%EF%B8%8F%0A%F0%9F%93%8C%0ACtrl%20%E2%97%84%0A%0A%0A%0A%0A%0A%F0%9F%93%8E&_fa@:0&:2&:2&:1&:0&:0&:0&:0&:0&:2;;&=K%0A%E2%8F%B0%0A%F0%9F%94%91%0ACtrl%20%E2%96%BA%0A%0A%0A%0A%0A%0A%F0%9F%94%92&_c=#cccccc;&=L&_c=#B2AA7E&f:3;&=/:%0A/;&_c=#F6B168&fa@:0&:1&:0&:2;;&=%22%0A'%0A%E2%83%9D%0ACtrl%200%0A%0A%0A%0A%0A%E2%83%9E%0A%E2%83%9F&_c=#cccccc&w:2.25;&=Enter;&@_w:2.25;&=Shift&_c=#94D8F6&fa@:0&:0&:0&:4;;&=Z%0A%E2%9A%A1%0A%E2%88%B6%0A%C3%B7%0A%0A%0A%0A%0A%0A%E2%89%A4&_fa@:0&:0&:0&:4&:0&:0&:0&:0&:2;;&=X%0A%E2%9D%8C%0A%C2%B7%0A%C3%97%0A%0A%0A%0A%0A%E2%9A%94%EF%B8%8F%0A%E2%89%A5&=C%0A%F0%9F%92%A5%0A%C2%B1%0A%E2%88%92%0A%0A%0A%0A%0A%E2%9A%96%EF%B8%8F%0A%E2%88%93&_c=#B2AA7E;&=V%0A%E2%9C%85%0A%E2%88%9B%0A%E2%88%9A&=B%0A%E2%98%A3%EF%B8%8F%0A%E2%82%BF%0A%E2%97%BE%0A%0A%0A%0A%0A%F0%9F%92%AC%0A%F0%9F%8C%B8&_c=#4f9ce3&fa@:0&:0&:0&:1;;&=N%0A%0A%E2%99%AA%0ACtrlSh%E2%96%BA&_c=#eb6a80;&=M%0A%0A%0ACtrl%20BS%0A%0A%0A%0A%0A%0A%F0%9F%94%8D&=%3C%0A,%0A%0ACtrl%20Del&=%3E%0A.&_c=#B2AA7E&f:3;&=?%0A//%0A?%0A//&_c=#cccccc&w:2.75;&=Shift;&@_w:1.25;&=Ctrl&_w:1.25;&=Win&_w:1.25;&=Alt&_a:7&w:6.25;&=&_a:4&w:1.25;&=Alt&_c=#777777&t=#ffffff&w:1.25;&=Win&_c=#cccccc&t=#000000&w:1.25;&=Menu&_w:1.25;&=Ctrl



30/03
http://www.keyboard-layout-editor.com/##@@_c=#6BD089&fa@:0&:0&:2&:2&:0&:0&:0&:0&:0&:0&:2;;&=~%0A%60%0A%E2%86%95%0A%E2%86%94%0A%0A%0A%0A%0A%0A%E2%87%95%0A%E2%87%94&_f:3;&=!%0A1%0A%E2%97%80%0A%E2%86%90%0A%0A%0A%0A%0A%CB%82%0A%E2%97%81%0A%E2%87%90&_f:3;&=/@%0A2%0A%E2%96%B6%0A%E2%86%92%0A%0A%0A%0A%0A%CB%83%0A%E2%96%B7%0A%E2%87%92&_f:3;&=#%0A3%0A%E2%96%B2%0A%E2%86%91%0A%0A%0A%0A%0A%CB%84%0A%E2%96%B3%0A%E2%87%91&_f:3;&=$%0A4%0A%E2%96%BC%0A%E2%86%93%0A%0A%0A%0A%0A%CB%85%0A%E2%96%BD%0A%E2%87%93&_c=#B2AA7E&f:3;&=%25%0A5%0A%E2%98%85%0A%E2%98%86%0A%0A%0A%0A%0A%F0%9F%95%B8%0A%E2%9C%B1%0A%E2%9D%84&_f:3;&=%5E%0A6%0A%E2%88%A8%0A%E2%88%A7%0A%0A%0A%0A%0A%E2%8A%BB%0A%E2%88%87%0A%E2%88%86&_c=#6BD089&f:3;&=/&%0A7%0A%E2%87%85%0A%E2%87%84%0A%0A%0A%0A%0A%0A%E2%86%BB%0A%E2%86%BA&_c=#B2AA7E&f:3;&=*%0A8%0A%E2%88%9D%0A%E2%88%9E%0A%0A%0A%0A%0A%E2%9C%9A%0A%E2%80%A0%0A%E2%80%A1&_f:3;&=(%0A9%0A%E2%88%89%0A%E2%88%88%0A%0A%0A%0A%0A%0A%E2%8A%84%0A%E2%8A%82&_f:3;&=)%0A0%0A%E2%88%8C%0A%E2%88%8B%0A%0A%0A%0A%0A%0A%E2%8A%85%0A%E2%8A%83&_fa@:0&:0&:2&:2&:0&:0&:0&:0&:0&:2&:2;;&=/_%0A-%0A%E2%9E%95%0A%E2%9E%96%0A%0A%0A%0A%0A%0A%E2%9E%97%0A%E2%9C%96%EF%B8%8F&_c=#94D8F6&f:3;&=+%0A/=%0A%E2%89%88%0A%E2%89%A0%0A%0A%0A%0A%0A%0A%E2%88%BC%0A%E2%89%A1&_c=#B2AA7E&f:3&w:2;&=Backspace%0A%0A%E2%97%8C%0A%E2%8C%AB;&@_c=#cccccc&w:1.5;&=Tab&_c=#e1e376&t=#000000%0A%0A%0A#ff0000&fa@:0&:0&:0&:4;;&=Q%0A%E2%86%B9%0A%E2%87%A7%0A%5C%0A%0A%0A%0A%0A%E2%86%B5%0A%E2%8F%8E&_fa@:0&:0&:0&:4&:0&:0&:0&:0&:0&:4;;&=W%0A%E2%9A%A0%0A%E2%82%A9%0A%5E%0A%0A%0A%0A%0A%E2%96%A0%0A%E2%96%A1&_fa@:0&:0&:0&:4&:0&:0&:0&:0&:2;;&=E%0A%E2%88%84%0A%E2%9C%89%0A/&%0A%0A%0A%0A%0A%F0%9F%91%80%0A%E2%88%83&_fa@:0&:0&:0&:4;;&=R%0A%E2%98%A2%EF%B8%8F%0A%E2%82%BD%0A%7C%0A%0A%0A%0A%0A%E2%A7%AB%0A%E2%97%8A&=T%0A%F0%9F%9B%87%EF%B8%8F%0A%E2%97%BF%0A~%0A%0A%0A%0A%0A%0A%E2%9B%94&_c=#B2AA7E&t=#000000&fa@:0&:0&:0&:0&:0&:0&:0&:0&:0&:4;;&=Y%0A%E2%98%AF%0A%C2%A5%0A%E2%99%BB%0A%0A%0A%0A%0A%E2%9C%A6%0A%E2%9C%A7&=U%0A%0A%E2%88%A9%0A%E2%88%AA&=I%0A%0A%E2%88%AB%0A%E2%84%B9&_f:3;&=O%0A%F0%9F%94%84%0A%C2%A4%0A%E2%88%85%0A%0A%0A%0A%0A%E2%97%8F%0A%E2%97%8B&_f:3;&=P%0A%E2%98%AE%0A%C2%A3%0A%F0%9F%93%9E%0A%0A%0A%0A%0A%F0%9F%95%BF%0A%E2%98%8F&_c=#F6B168&fa@:0&:0&:0&:2;;&=%7B%0A%5B%0A%E2%89%AA%0ACtrl%20-%0A%0A%0A%0A%0A%0A%E2%9F%A8&=%7D%0A%5D%0A%E2%89%AB%0ACtrl%20+%0A%0A%0A%0A%0A%0A%E2%9F%A9&_c=#B2AA7E&w:1.5;&=%7C%0A%5C%0A%E2%88%A5%0A%E2%88%A6%0A%0A%0A%0A%0A%E2%9F%82;&@_c=#cccccc&w:1.75;&=Caps%20Lock&_c=#e1e376&t=#000000%0A%0A%0A#ff0000&fa@:0&:0&:0&:4;;&=A%0A%E2%88%80%0A%E2%8C%98%0A/@%0A%0A%0A%0A%0A%E2%9A%9B%0A%E2%8C%A5&_fa@:0&:0&:0&:4&:0&:0&:0&:0&:0&:4;;&=S%0A%E2%9C%82%0A%E2%82%AA%0A$%0A%0A%0A%0A%0A%E2%98%A0%0A%F0%9F%95%B1&_fa@:0&:0&:0&:4;;&=D%0A%E2%88%82%0A%E2%8C%80%0A#%0A%0A%0A%0A%0A%E2%97%86%0A%E2%97%87&=F%0A%F0%9F%94%A5%0A%E2%80%B0%0A%25&=G%0A%E2%9A%99%EF%B8%8F%0A%E2%88%A0%0A%60%0A%0A%0A%0A%0A%0A%E2%88%9F&_c=#4f9ce3&t=#000000&fa@:0&:0&:0&:1;;&=H%0A%0A%E2%82%B4%0ACtrlSh%20%E2%97%84&_fa@:0&:2&:1&:1&:0&:0&:0&:0&:0&:2;;&=J%0A%E2%9C%8F%EF%B8%8F%0A%F0%9F%93%8C%0ACtrl%20%E2%97%84%0A%0A%0A%0A%0A%0A%F0%9F%93%8E&_fa@:0&:2&:2&:1&:0&:0&:0&:0&:0&:2;;&=K%0A%E2%8F%B0%0A%F0%9F%94%91%0ACtrl%20%E2%96%BA%0A%0A%0A%0A%0A%0A%F0%9F%94%92&_c=#cccccc;&=L&_c=#B2AA7E&f:3;&=/:%0A/;&_c=#F6B168&fa@:0&:1&:0&:2;;&=%22%0A'%0A%E2%83%9D%0ACtrl%200%0A%0A%0A%0A%0A%E2%83%9E%0A%E2%83%9F&_c=#cccccc&w:2.25;&=Enter;&@_w:2.25;&=Shift&_c=#94D8F6&fa@:0&:0&:0&:4;;&=Z%0A%E2%9A%A1%0A%E2%88%B6%0A%C3%B7%0A%0A%0A%0A%0A%0A%E2%89%A4&_fa@:0&:0&:0&:4&:0&:0&:0&:0&:2;;&=X%0A%E2%9D%8C%0A%C2%B7%0A%C3%97%0A%0A%0A%0A%0A%E2%9A%94%EF%B8%8F%0A%E2%89%A5&=C%0A%F0%9F%92%A5%0A%C2%B1%0A%E2%88%92%0A%0A%0A%0A%0A%E2%9A%96%EF%B8%8F%0A%E2%88%93&_c=#B2AA7E;&=V%0A%E2%9C%85%0A%E2%88%9B%0A%E2%88%9A&=B%0A%E2%98%A3%EF%B8%8F%0A%E2%82%BF%0A%E2%97%BE%0A%0A%0A%0A%0A%F0%9F%92%AC%0A%F0%9F%8C%B8&_c=#4f9ce3&fa@:0&:0&:0&:1;;&=N%0A%0A%E2%99%AA%0ACtrlSh%E2%96%BA&_c=#eb6a80;&=M%0A%0A%0ACtrl%20BS%0A%0A%0A%0A%0A%0A%F0%9F%94%8D&=%3C%0A,%0A%0ACtrl%20Del&=%3E%0A.&_c=#B2AA7E&f:3;&=?%0A//%0A?%0A//&_c=#cccccc&w:2.75;&=Shift;&@_w:1.25;&=Ctrl&_w:1.25;&=Win&_w:1.25;&=Alt&_a:7&w:6.25;&=&_a:4&w:1.25;&=Alt&_c=#777777&t=#ffffff&w:1.25;&=Win&_c=#cccccc&t=#000000&w:1.25;&=Menu&_w:1.25;&=Ctrl


*/