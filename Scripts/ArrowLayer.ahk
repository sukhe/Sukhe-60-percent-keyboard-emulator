farr(x) {
	global ArrowLayer
	fsend(x)
	ArrowLayer := false
}

#If ((ArrowLayer or ArrowLayerLock) and (!GetKeyState("Space", "P")))

+!1::farr("{U+2665}")	; ♥ Black Heart Suit
+!2::farr("{U+2666}")	; ♦ Black Diamond Suit
+!3::farr("{U+2663}")	; ♣ Black Club Suit
+!4::farr("{U+2660}")	; ♠ Black Spade Suit

!1::farr("{U+2661}")	; ♡ White Heart Suit
!2::farr("{U+2662}")	; ♢ White Diamond Suit
!3::farr("{U+2667}")	; ♧ White Club Suit
!4::farr("{U+2664}")	; ♤ White Spade Suit

; Manicule
1::farr("{U+1F448}")	; 👈 White Left Pointing Backhand Index
2::farr("{U+1F449}")	; 👉 White Right Pointing Backhand Index
3::farr("{U+261D}")	; ☝ White Up Pointing Index
4::farr("{U+1F447}")	; 👇 White Down Pointing Backhand Index

^+5::farr("{U+263A}")	; ☺ White Smiling Face
^5::farr("{U+1F606}")	; 😆 Smiling Face with Open Mouth and Tightly-Closed Eyes
!+5::farr("{U+1F602}")	; 😂 Face with Tears of Joy
!5::farr("{U+1F923}")	; 🤣 Rolling On The Floor Laughing
+5::farr("{U+1F604}")	; 😄 Smiling Face with Open Mouth and Smiling Eyes
5::farr("{U+1F642}")	; 🙂 Slightly Smiling Face

!+6::farr("{U+1F917}")	; 🤗 Hugging Face
^6::farr("{U+1F601}")	; 😁 Grinning Face with Smiling Eyes
!6::farr("{U+1F600}")	; 😀 Grinning Face
+6::farr("{U+1F61C}")	; 😜 Face with Stuck-Out Tongue and Winking Eye
6::farr("{U+1F609}")	; 😉 Winking Face

!+7::farr("{U+1F607}")	; 😇 Smiling Face with Halo
!7::farr("{U+1F60E}")	; 😎 Smiling Face with Sunglasses
^7::farr("{U+1F618}")	; 😘 Face Throwing a Kiss
+7::farr("{U+1F970}")	; 🥰 Smiling Face with Smiling Eyes and Three Hearts
7::farr("{U+1F60D}")	; 😍 Smiling Face with Heart-Shaped Eyes

!+8::farr("{U+1F612}")	; 😒 Unamused Face
!8::farr("{U+1F914}")	; 🤔 Thinking Face
^8::farr("{U+1F644}")	; 🙄 Face With Rolling Eyes
+8::farr("{U+1F928}")	; 🤨 Face With One Eyebrow Raised
8::farr("{U+1F610}")	; 😐 Neutral Face

!+9::farr("{U+1F92B}") 	; 🤫 Face With Finger Covering Closed Lips
!9::farr("{U+1F910}")	; 🤐 Zipper-Mouth Face
^9::farr("{U+1F92E}") 	; 🤮 Face With Open Mouth Vomiting
+9::farr("{U+1F60C}") 	; 😌 Relieved Face
9::farr("{U+1F971}") 	; 🥱 Yawning Face

^+0::farr("{U+2639}")	; ☹ White Frowning Face
^0::farr("{U+1F631}")	; 😱 Face Screaming In Fear
!+0::farr("{U+1F92F}")	; 🤯 Shocked Face With Exploding Head
!0::farr("{U+1F632}")	; 😲 Astonished Face
+0::farr("{U+1F97A}")	; 🥺 Face with Pleading Eyes
0::farr("{U+1F641}")	; 🙁 Slightly Frowning Face


!+sc00C::farr("{U+1F629}")	; 😩 Weary Face
^sc00C::farr("{U+1F62D}")	; 😭 Loudly Crying Face
!sc00C::farr("{U+1F622}")	; 😢 Crying Face
+sc00C::farr("{U+1F92C}")	; 🤬 Serious Face With Symbols Covering Mouth
sc00C::farr("{U+1F621}")	; 😡 Pouting Face

!+sc029::farr("{U+1F4A9}")	;💩 Pile of Poo
^sc029::farr("{U+1F47D}")	; 👽 Extraterrestrial Alien
!sc029::farr("{U+1F916}")	; 🤖 Robot Face
+sc029::farr("{U+1F921}")	; 🤡 Clown Face
sc029::farr("{U+1F480}")	; 💀 Skull

^a::farr("{U+1F878}")	; 🡸 Wide-Headed Leftwards Heavy Barb Arrow
^w::farr("{U+1F879}")	; 🡹 Wide-Headed Upwards Heavy Barb Arrow
^d::farr("{U+1F87A}")	; 🡺 Wide-Headed Rightwards Heavy Barb Arrow
^x::farr("{U+1F87B}")	; 🡻 Wide-Headed Downwards Heavy Barb Arrow
^q::farr("{U+1F87C}")	; 🡼 Wide-Headed North West Heavy Barb Arrow
^e::farr("{U+1F87D}")	; 🡽 Wide-Headed North East Heavy Barb Arrow
^c::farr("{U+1F87E}")	; 🡾 Wide-Headed South East Heavy Barb Arrow
^z::farr("{U+1F87F}")	; 🡿 Wide-Headed South West Heavy Barb Arrow

!+q::farr("{U+2BB6}")	; ⮶
!+e::farr("{U+2BB2}")	; ⮲
!+c::farr("{U+2BB5}")	; ⮵
!+z::farr("{U+2BB1}")	; ⮱

!+w::farr("{U+2BB4}")	; ⮴
!+d::farr("{U+2BB3}")	; ⮳
!+x::farr("{U+2BB7}")	; ⮷
!+a::farr("{U+2BB0}")	; ⮰

!q::farr("{U+2BAE}")	; ⮮
!e::farr("{U+2BAA}")	; ⮪
!c::farr("{U+2BAD}")	; ⮭
!z::farr("{U+2BA9}")	; ⮩

!w::farr("{U+2BAC}")	; ⮬
!d::farr("{U+2BAB}")	; ⮫
!x::farr("{U+2BAF}")	; ⮯
!a::farr("{U+2BA8}")	; ⮨

+a::farr("{U+1F844}")	; 🡄
+w::farr("{U+1F845}")	; 🡅
+d::farr("{U+1F846}")	; 🡆
+x::farr("{U+1F847}")	; 🡇

+q::farr("{U+2BA6}")	; ⮦
+e::farr("{U+2BA2}")	; ⮢
+c::farr("{U+2BA5}")	; ⮥
+z::farr("{U+2BA1}")	; ⮡

q::farr("{U+2BA3}")	; ⮣
e::farr("{U+2BA7}")	; ⮧
c::farr("{U+2BA0}")	; ⮠
z::farr("{U+2BA4}")	; ⮤

w::farr("{U+2B8F}")	; ⮏
d::farr("{U+2B8C}")	; ⮌
x::farr("{U+2B8D}")	; ⮍
a::farr("{U+2B8E}")	; ⮎

^s::fsend("{U+2199}")	; ↙ South West Arrow
!s::fsend("{U+2196}")	; ↖ North West Arrow
+s::fsend("{U+2197}")	; ↗ North East Arrow
s::fsend("{U+2198}")	; ↘ South East Arrow

!+u::farr("{U+1F386}")	; 🎆 Fireworks
!u::farr("{U+1F389}")	; 🎉 Party Popper
^u::farr("{U+1F37E}")	; 🍾 Bottle with Popping Cork
+u::farr("{U+1F382}")	; 🎂 Birthday Cake
u::farr("{U+1F381}")	; 🎁 Wrapped Present

!+i::farr("{U+1F937}")	; 🤷 Shrug
^i::farr("{U+1F44A}")	; 👊 Fisted Hand Sign
!i::farr("{U+270A}")	; ✊ Raised Fist
+i::farr("{U+270C}")	; ✌ Victory Hand
i::farr("{U+1F4AA}")	; 💪 Flexed Biceps

!+p::farr("{U+1F645}")	; 🙅 Face With No Good Gesture
!p::farr("{U+1F64F}")	; 🙏 Person with Folded Hands
^p::farr("{U+1F926}")	; 🤦 Face Palm
+p::farr("{U+1F595}")	; 🖕 Reversed Hand with Middle Finger Extended
p::farr("{U+1F44E}")	; 👎 Thumbs Down Sign

!+o::farr("{U+1F646}")	; 🙆 Face With Ok Gesture
^o::farr("{U+1F91D}")	; 🤝 Handshake
!o::farr("{U+1F44F}")	; 👏 Clapping Hands Sign
+o::farr("{U+1F44C}")	; 👌 Ok Hand Sign
o::farr("{U+1F44D}")	; 👍 Thumbs Up Sign

; hearts
!+h::farr("{U+1F48C}")	; 💌 Love Letter
!h::farr("{U+1F495}")	; 💕 Two Hearts
^h::farr("{U+1F49D}")	; 💝 Heart with Ribbon
+h::farr("{U+1F494}")	; 💔 Broken Heart
h::farr("{U+1F498}")	; 💘 Heart with Arrow

; male
!+m::farr("{U+1F935}")	; 🤵 Man In Tuxedo
^m::farr("{U+2642}")	; ♂️ Male Sign
!m::farr("{U+1F474}")	; 👴 Older Man
+m::farr("{U+1F468}")	; 👨 Man
m::farr("{U+1F466}")	; 👦 Boy

; female
!+f::farr("{U+1F470}")	; 👰 Bride with Veil
^f::farr("{U+2640}")	; ♀ Female Sign
!f::farr("{U+1F475}")	; 👵 Older Woman
+f::farr("{U+1F469}")	; 👩 Woman
f::farr("{U+1F467}")	; 👧 Girl

; gender neutral
^g::farr("{U+1F476}")	; 👶 Baby
!g::farr("{U+1F9D3}")	; 🧓 Older Adult
+g::farr("{U+1F9D1}")	; 🧑 Adult
g::farr("{U+1F9D2}")	; 🧒 Child

; beverage / beer
!+b::farr("{U+1F379}")	; 🍹 Tropical Drink
^b::farr("{U+1F377}")	; 🍷 Wine Glass
!b::farr("{U+1F37A}")	; 🍺 Beer Mug
+b::farr("{U+1F964}")	; 🥤 Cup With Straw
b::farr("{U+2615}")	; ☕ Hot Beverage

; fastfood
!+v::farr("{U+1F37F}")	; 🍿 Popcorn
^v::farr("{U+1F369}")	; 🍩 Doughnut
!v::farr("{U+1F354}")	; 🍔 Hamburger
+v::farr("{U+1F32D}")	; 🌭 Hot Dog
v::farr("{U+1F355}")	; 🍕 Slice of Pizza

!+n::farr("{U+1F957}")	; 🥗 Green Salad
^n::farr("{U+1F35D}")	; 🍝 Spaghetti
!n::farr("{U+1F372}")	; 🍲 Pot of Food
+n::farr("{U+1F373}")	; 🍳 Cooking
n::farr("{U+1F37D}")	; 🍽 Fork and Knife with Plate

!+j::farr("{U+1F9C1}")	; 🧁 Cupcake
^j::farr("{U+1F370}")	; 🍰 Shortcake
!j::farr("{U+1F950}")	; 🥐 Croissant
+j::farr("{U+1F36D}")	; 🍭 Lollipop
j::farr("{U+1F368}")	; 🍨 Ice Cream

!+k::farr("{U+1F352}")	; 🍒 Cherries
^k::farr("{U+1F388}")	; 🎈 Balloon
!k::farr("{U+2728}")	; ✨ Sparkles
+k::farr("{U+1F339}")	; 🌹 Rose
k::farr("{U+1F48B}")	; 💋 Kiss Mark

!+sc02B::farr("{U+1F4B0}")	; 💰 Money Bag
!sc02B::farr("{U+1F4B2}")	; 💲 Heavy Dollar Sign
+sc02B::farr("{U+1F4C8}")	; 📈 Chart with Upwards Trend
^sc02B::farr("{U+1F4C9}")	; 📉 Chart with Downwards Trend
sc02B::farr("{U+1F4C5}")	; 📅 Calendar

!+Backspace::farr("{U+1F3C6}")	; 🏆 Trophy
+Backspace::farr("{U+1F947}")	; 🥇 First Place Medal
!Backspace::farr("{U+1F948}")	; 🥈 Second Place Medal
^Backspace::farr("{U+1F949}")	; 🥉 Third Place Medal
Backspace::farr("{U+1F396}")	; 🎖 Military Medal

!+sc01A::farr("{U+1F500}")	; 🔀️ Shuffle
!sc01A::farr("{U+23EE}")	; ⏮	Skip to the start or previous file/track/chapter
^sc01A::farr("{U+23ED}")	; ⏭	Skip to the end or next file/track/chapter
+sc01A::farr("{U+23EA}")	; ⏪	Back (Fast Backwards)
sc01A::farr("{U+23E9}")	; ⏩	Fast forward

!+sc01B::farr("{U+23FA}")	; ⏺	Record
!sc01B::farr("{U+23CF}")	; ⏏	Eject
^sc01B::farr("{U+23F9}")	; ⏹	Stop
+sc01B::farr("{U+23F8}")	; ⏸	Pause
sc01B::farr("{U+23EF}")	; ⏯	Play/Pause toggle

!+r::farr("{U+2625}")	; ☥ Ankh
!r::farr("{U+262A}")	; ☪ Star and Crescent
^r::farr("{U+2721}")	; ✡ Star of David
+r::farr("{U+2626}")	; ☦ Orthodox Cross
r::farr("{U+271D}")	; ✝ Latin Cross

!+t::farr("{U+1F6A7}")	; 🚧 Construction Sign
!t::farr("{U+1F6A8}")	; 🚨 Police Cars Revolving Light
^t::farr("{U+2708}")	; ✈ Airplane
+t::farr("{U+1F68C}")	; 🚌 Bus
t::farr("{U+1F697}")	; 🚗 Automobile

!+sc035::farr("{U+2049}")	; ⁉ Exclamation Question Mark
!sc035::farr("{U+2755}")	; ❕ White Exclamation Mark Ornament
+sc035::farr("{U+2757}")	; ❗ Heavy Exclamation Mark Symbol
^sc035::farr("{U+2754}")	; ❔ White Question Mark Ornament
sc035::farr("{U+2753}")	; ❓ Black Question Mark Ornament

#If
