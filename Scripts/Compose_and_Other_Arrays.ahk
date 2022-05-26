; ----------------------------------------------------------------
; Arrays for Compose and diacritics
; ----------------------------------------------------------------

Diacr := {"Shift_sc027":"{U+0308}", "sc027":"{U+0328}", "Shift_sc028":"{U+030B}", "sc028":"{U+0301}", "Shift_sc029":"{U+0303}", "sc029":"{U+0300}", "sc033":"{U+0326}", "Shift_sc034":"{U+0323}", "sc034":"{U+0307}", "Shift_sc035":"{U+0338}", "sc035":"{U+0337}", "Shift_v":"{U+0315}", "v":"{U+030C}", "c":"{U+0327}", "Shift_6":"{U+0302}", 6:"{U+0302}", "o":"{U+030A}", "Alt_sc00C":"{U+0305}", "Ctrl_sc00C":"{U+0332}", "Shift_sc00C":"{U+0331}", "sc00C":"{U+0304}", "u":"{U+0306}", "Alt_sc00D":"{U+033F}", "Ctrl_sc00D":"{U+0333}", "Shift_sc00D":"{U+0336}", "sc00D":"{U+0335}", "Shift_w":"{U+0344}", "Shift_h":"{U+0309}", "h":"{U+031B}", "j":"{U+0321}", "r":"r", "m":"!Math!"}

Start := {"Shift_sc027":"Shift_sc027", "sc027":"sc027", "Shift_sc028":"Shift_sc028", "sc028":"sc028", "Shift_sc029":"Shift_sc029", "sc029":"sc029", "sc02B":"sc02B", "sc033":"sc033", "Shift_sc034":"Shift_sc034", "sc034":"sc034", "Shift_sc035":"Shift_sc035", "sc035":"sc035",  "Alt_sc00C":"Alt_sc00C", "Alt_sc00C":"Alt_sc00C", "Ctrl_sc00C":"Ctrl_sc00C", "Shift_sc00C":"Shift_sc00C", "sc00C":"sc00C", "Alt_sc00D":"Alt_sc00D", "Ctrl_sc00D":"Ctrl_sc00D", "Shift_sc00D":"Shift_sc00D", "sc00D":"sc00D", "v":"v", "c":"c", "u":"u", "Shift_6":"A_6", 6:"A_6", "Shift_o":"Shift_o", "o":"o", "Shift_a":"Shift_a", "a":"a", "Shift_d":"Shift_d", "d":"d", "Shift_x":"Shift_x", "x":"x", "f":"f", "s":"s", "Shift_i":"Shift_i", "i":"i", "Shift_l":"Shift_l", "l":"l", "Shift_n":"Shift_n", "n":"n", "Shift_w":"Shift_w", "Shift_h":"Shift_h", "h":"h", "j":"j", "t":"t","r":"r", "m":"Math", "sc01B":"EmojiVariant", "Ctrl_g":"Diamonds_Triangles", "Alt_g":"Squares", "Shift_g":"Circles", "g":"Hearts"}

Shift_sc035 := {"Shift_o":"{U+00D8}", "o":"{U+00F8}"}

; Palatalized Hook Below
j := {"Shift_n":"{U+014A}", "n":"{U+014B}"}

; Diaeresis
Shift_sc027 := {"Shift_a":"{U+00C4}", "a":"{U+00E4}", "Shift_e":"{U+00CB}", "e":"{U+00EB}", "Shift_i":"{U+00CF}", "i":"{U+00EF}", "Shift_o":"{U+00D6}", "o":"{U+00F6}", "Shift_u":"{U+00DC}", "u":"{U+00FC}", "Shift_w":"{U+1E84}", "w":"{U+1E85}", "Shift_y":"{U+0178}", "y":"{U+00FF}"}

; Ogonek
sc027 := {"Shift_a":"{U+0104}", "a":"{U+0105}", "Shift_e":"{U+0118}", "e":"{U+0119}", "Shift_i":"{U+012E}", "i":"{U+012F}", "Shift_u":"{U+0172}", "u":"{U+0173}"}

; DoubleAcute
Shift_sc028 := {"Shift_o":"{U+0150}", "o":"{U+0151}", "Shift_u":"{U+0170}", "u":"{U+0171}"}

; Acute
sc028 := {"Shift_a":"sc028_Shift_a", "a":"sc028_a", "Shift_c":"{U+0106}", "c":"{U+0107}", "Shift_e":"{U+00C9}", "e":"{U+00E9}", "Shift_i":"{U+00CD}", "i":"{U+00ED}", "Shift_l":"{U+0139}", "l":"{U+013A}", "Shift_n":"{U+0143}", "n":"{U+0144}", "Shift_o":"sc028_Shift_o", "o":"sc028_o", "Shift_r":"{U+0154}", "r":"{U+0155}", "Shift_s":"{U+015A}", "s":"{U+015B}", "Shift_u":"{U+00DA}", "u":"{U+00FA}", "Shift_w":"{U+1E82}", "w":"{U+1E83}", "Shift_y":"{U+00DD}", "y":"{U+00FD}", "Shift_z":"{U+0179}", "z":"{U+017A}", "sc035":"sc028_sc035"}

; Ǽ ǽ
sc028_Shift_a := {"Shift_e":"{U+01FC}", "e":"{U+01FC}", "*":"{U+00C1}"}
sc028_a := {"Shift_e":"{U+01FD}", "e":"{U+01FD}", "*":"{U+00E1}"}

; Ǿ ǿ
sc028_Shift_o := {"sc035":"{U+01FE}", "*":"{U+00D3}"}
sc028_o := {"sc035":"{U+01FF}", "*":"{U+00F3}"}
sc028_sc035 := {"Shift_o":"{U+01FE}", "o":"{U+01FF}"}

; Tilde
Shift_sc029:= {"Shift_a":"{U+00C3}", "a":"{U+00E3}", "Shift_e":"{U+1EBC}", "e":"{U+1EBD}", "Shift_i":"{U+0128}", "i":"{U+0129}", "Shift_n":"{U+00D1}", "n":"{U+00F1}", "Shift_o":"{U+00D5}", "o":"{U+00F5}", "Shift_u":"{U+0168}", "u":"{U+0169}", "Shift_y":"{U+1EF8}", "y":"{U+1EF9}"}

; Grave
sc029 := {"Shift_a":"{U+00C0}", "a":"{U+00E0}", "Shift_e":"{U+00C8}", "e":"{U+00E8}", "Shift_i":"{U+00CC}", "i":"{U+00EC}", "Shift_o":"{U+00D2}", "o":"{U+00F2}", "Shift_u":"{U+00D9}", "u":"{U+00F9}", "Shift_w":"{U+1E80}", "w":"{U+1E81}", "Shift_y":"{U+1EF2}", "y":"{U+1EF3}"}

; Ligatures and rare symbols Æ æ ẞ ß Ð ð Œ œ Ŀ ŀ Ø ø Þ þ Ə ə Ʒ ʒ
sc02B := {"Shift_a":"{U+00C6}", "a":"{U+00E6}", "Shift_b":"{U+1E9E}", "b":"{U+00DF}", "Shift_d":"{U+00D0}", "d":"{U+00F0}", "Shift_e":"{U+0152}", "e":"{U+0153}", "Shift_l":"{U+013F}", "l":"{U+0140}", "Shift_o":"{U+00D8}", "o":"{U+00F8}", "Shift_t":"{U+00DE}", "t":"{U+00FE}", "Shift_6":"{U+018F}", 6:"{U+0259}", "Shift_z":"{U+01B7}", "z":"{U+0292}"}

; Comma (below)
sc033 := {"Shift_g":"{U+0122}", "g":"{U+0123}", "Shift_k":"{U+0136}", "k":"{U+0137}", "Shift_l":"{U+013B}", "l":"{U+013C}", "Shift_n":"{U+0145}", "n":"{U+0146}", "Shift_r":"{U+0156}", "r":"{U+0157}", "Shift_s":"{U+0218}", "s":"{U+0219}", "Shift_t":"{U+021A}", "t":"{U+021B}"}

; DotBelow 
Shift_sc034:= {"Shift_a":"{U+1EA0}", "a":"{U+1EA1}", "Shift_d":"{U+1E0C}", "d":"{U+1E0D}", "Shift_e":"{U+1EB8}", "e":"{U+1EB9}","Shift_h":"{U+1E24}", "h":"{U+1E25}", "Shift_i":"{U+1ECA}", "i":"{U+1ECB}", "Shift_l":"{U+1E36}", "l":"{U+1E37}", "Shift_o":"{U+1ECC}", "o":"{U+1ECD}", "Shift_r":"{U+1E5A}", "r":"{U+1E5B}", "Shift_t":"{U+1E6C}", "t":"{U+1E6D}", "Shift_u":"{U+1EE4}", "u":"{U+1EE5}", "Shift_y":"{U+1EF4}", "y":"{U+1EF5}"}

; Dot 
sc034 := {"Shift_b":"{U+1E02}", "b":"{U+1E03}", "Shift_c":"{U+010A}", "c":"{U+010B}", "Shift_d":"{U+1E0A}", "d":"{U+1E0B}", "Shift_e":"{U+0116}", "e":"{U+0117}", "Shift_f":"{U+1E1E}", "f":"{U+1E1F}", "Shift_g":"{U+0120}", "g":"{U+0121}", "Shift_h":"{U+1E22}", "h":"{U+1E23}", "Shift_i":"{U+0130}", "i":"{U+0131}", "Shift_m":"{U+1E40}", "m":"{U+1E41}", "Shift_p":"{U+1E56}", "p":"{U+1E57}", "Shift_s":"{U+1E60}", "s":"{U+1E61}", "Shift_t":"{U+1E6A}", "t":"{U+1E6B}", "Shift_z":"{U+017B}", "z":"{U+017C}"}

; BarSlash 
sc035 := {"Shift_d":"{U+00D0}", "d":"{U+00F0}", "Shift_l":"{U+0141}", "l":"{U+0142}", "Shift_o":"{U+00D8}", "o":"{U+00F8}", "Shift_p":"{U+00DE}", "p":"{U+00FE}"}


; BarBar
Shift_sc00D := {"Shift_h":"{U+0126}"}
sc00D := {"Shift_b":"{U+0243}", "b":"{U+0180}","Shift_d":"{U+0110}", "d":"{U+0111}", "Shift_g":"{U+01E4}", "g":"{U+01E5}", "Shift_h":"{U+0126}", "h":"{U+0127}", "Shift_t":"{U+0166}", "t":"{U+0167}", "Shift_z":"{U+01B5}", "z":"{U+01B6}"}

; Caron / háček
v := {"Shift_c":"{U+010C}", "c":"{U+010D}", "Shift_d":"{U+010E}", "d":"{U+010F}", "Shift_e":"{U+011A}", "e":"{U+011B}", "Shift_l":"{U+013D}", "l":"{U+013E}", "Shift_n":"{U+0147}", "n":"{U+0148}", "Shift_r":"{U+0158}", "r":"{U+0159}", "Shift_s":"{U+0160}", "s":"{U+0161}", "Shift_t":"{U+0164}", "t":"{U+0165}", "Ctrl_z":"{U+01EE}", "Alt_z":"{U+01EF}", "Shift_z":"{U+017D}", "z":"{U+017E}"}

; Cedilla 
c := {"Shift_c":"{U+00C7}", "c":"{U+00E7}", "Shift_s":"{U+015E}", "s":"{U+015F}"}

; Breve
u := {"Shift_a":"{U+0102}", "a":"{U+0103}", "Shift_g":"{U+011E}", "g":"{U+011F}", "Shift_u":"{U+016C}", "u":"{U+016D}"}

; Circumflex 
A_6 := {"Shift_a":"{U+00C2}", "a":"{U+00E2}", "Shift_c":"{U+0108}", "c":"{U+0109}", "Shift_e":"{U+00CA}", "e":"{U+00EA}", "Shift_g":"{U+011C}", "g":"{U+011D}", "Shift_h":"{U+0124}", "h":"{U+0125}", "Shift_i":"{U+00CE}", "i":"{U+00EE}", "Shift_j":"{U+0134}", "j":"{U+0135}", "Shift_o":"{U+00D4}", "o":"{U+00F4}", "Shift_s":"{U+015C}", "s":"{U+015D}", "Shift_u":"{U+00DB}", "u":"{U+00FB}", "Shift_w":"{U+0174}", "w":"{U+0175}", "Shift_y":"{U+0176}", "y":"{U+0177}"}

; Macron 
sc00C := {"Shift_a":"sc00C_Shift_a", "a":"sc00C_a", "Shift_e":"{U+0112}", "e":"{U+0113}", "Shift_i":"{U+012A}", "i":"{U+012B}", "Shift_o":"{U+014C}", "o":"{U+014D}", "Shift_u":"{U+016A}", "u":"{U+016B}"}
sc00C_Shift_a := {"Shift_e":"{U+01E2}", "e":"{U+01E2}", "*":"{U+0100}"}
sc00C_a := {"e":"{U+01E3}","*":"{U+0101}"}

; Horn
h := {"Shift_o":"{U+01A0}", "o":"{U+01A1}", "Shift_u":"{U+01AF}", "u":"{U+01B0}"}

; Hook Above
Shift_h := {"Shift_a":"{U+1EA2}", "a":"{U+1EA3}", "Shift_e":"{U+1EBA}", "e":"{U+1EBB}", "Shift_i":"{U+1EC8}", "i":"{U+1EC9}", "Shift_o":"{U+1ECE}", "o":"{U+1ECF}", "Shift_u":"{U+1EE6}", "u":"{U+1EE7}", "Shift_y":"{U+1EF6}", "y":"{U+1EF7}"}

; Ring and digraph Œ œ
o := {"Shift_a":"{U+00C5}", "a":"{U+00E5}", "Shift_u":"{U+016E}", "u":"{U+016F}", "Shift_e":"{U+0152}", "e":"{U+0153}"}
Shift_o := {"Shift_e":"{U+0152}", "e":"{U+0152}"}

; Æ æ
a := {"Shift_e":"{U+00C6}", "e":"{U+00E6}"}
Shift_a := {"Shift_e":"{U+00C6}", "e":"{U+00C6}"}

; Ǳ ǲ ǳ
Shift_d := {"Shift_z":"{U+01F1}", "z":"{U+01F2}", "Shift_v":"Shift_x", "v":"Shift_x"}
d := {"z":"{U+01F3}", "Shift_v":"x", "v":"x"}

; DŽ Dž dž  Ǆ ǅ ǆ
Shift_x := {"Shift_z":"{U+01C4}", "z":"{U+01C5}"}
x := {"z":"{U+01C6}", "o":"{U+00A4}"}

; ﬁ ﬂ ﬅ
f := {"f":"ff", "i":"{U+FB01}", "l":"{U+FB02}", "t":"{U+FB05}"}

; ﬃ ﬄ ﬀ
ff := {"i":"{U+FB03}", "l":"{U+FB04}", "*":"{U+FB00}"}

; ﬆ
s := {"t":"{U+FB06}"}

; ʦ
t := {"s":"{U+02A6}"}

; Ĳ
Shift_i := {"Shift_j":"{U+0132}", "j":"{U+0132}"}

; ĳ
i := {"j":"{U+0133}"}

; ǈ Ǉ Ŀ Ỻ
Shift_l := {"Shift_j":"{U+01C7}", "j":"{U+01C8}", "sc034":"{U+013F}", "Shift_l":"{U+1EFA}", "l":"{U+1EFA}"}

; ǉ ŀ ỻ
l := {"j":"{U+01C9}", "sc034":"{U+0140}", "l":"{U+1EFB}"}

; Ǌ ǋ
Shift_n := {"Shift_j":"{U+01CA}", "j":"{U+01CB}"}

; ǌ
n := {"j":"{U+01CC}"}

; Combining Greek Dialytika Tonos
Shift_w := {"*":"{U+0344}"}

; Regional Indicator Symbol Letter
r := {"a":"{U+1F1E6}", "b":"{U+1F1E7}", "c":"{U+1F1E8}", "d":"{U+1F1E9}", "e":"{U+1F1EA}", "f":"{U+1F1EB}", "g":"{U+1F1EC}", "h":"{U+1F1ED}", "i":"{U+1F1EE}", "j":"{U+1F1EF}", "k":"{U+1F1F0}", "l":"{U+1F1F1}", "m":"{U+1F1F2}", "n":"{U+1F1F3}", "o":"{U+1F1F4}", "p":"{U+1F1F5}", "q":"{U+1F1F6}", "r":"{U+1F1F7}", "s":"{U+1F1F8}", "t":"{U+1F1F9}", "u":"{U+1F1FA}", "v":"{U+1F1FB}", "w":"{U+1F1FC}", "x":"{U+1F1FD}", "y":"{U+1F1FE}", "z":"{U+1F1FF}"}

; ----------------------------------------------------------------
; Stub empty arrays
; ----------------------------------------------------------------

Alt_sc00C := {}
Shift_sc00C := {}
Ctrl_sc00C := {}
Alt_sc00D := {}
Ctrl_sc00D := {}

; ----------------------------------------------------------------
; Arrays for Subscript, Superscript and Vulgar Fraction
; ----------------------------------------------------------------

ASuper := {0:"{U+2070}", 1:"{U+00B9}", 2:"{U+00B2}", 3:"{U+00B3}", 4:"{U+2074}", 5:"{U+2075}", 6:"{U+2076}", 7:"{U+2077}", 8:"{U+2078}", 9:"{U+2079}"}
ASub := {0:"{U+2080}", 1:"{U+2081}", 2:"{U+2082}", 3:"{U+2083}", 4:"{U+2084}", 5:"{U+2085}", 6:"{U+2086}", 7:"{U+2087}", 8:"{U+2088}", 9:"{U+2089}"}

AKey := {11:"{U+2070}", 2:"{U+00B9}", 3:"{U+00B2}", 4:"{U+00B3}", 5:"{U+2074}", 6:"{U+2075}", 7:"{U+2076}", 8:"{U+2077}", 9:"{U+2078}", 10:"{U+2079}"}
AKey3 := {0:"{U+2189}", 2:"{U+2153}", 3:"{U+2154}", 11:"{U+2189}"}
AKey4 := {2:"{U+00BC}", 4:"{U+00BE}"}
AKey5 := {2:"{U+2155}", 3:"{U+2156}", 4:"{U+2157}", 5:"{U+2158}"}
AKey6 := {2:"{U+2159}", 6:"{U+215A}"}
AKey8 := {2:"{U+215B}", 4:"{U+215C}", 6:"{U+215D}", 8:"{U+215E}"}

; ----------------------------------------------------------------
; Arrays for emoji and geometrical figures
; ----------------------------------------------------------------

EmojiVariant := {"sc01A":"{U+FE0E}", "sc01B":"{U+FE0F}", 1:"{U+1F3FB}", 2:"{U+1F3FC}", 3:"{U+1F3FD}", 4:"{U+1F3FE}", 5:"{U+1F3FF}", "w":"{U+200D}{U+1F9B3}", "r":"{U+200D}{U+1F9B0}", "c":"{U+200D}{U+1F9B1}", "b":"{U+200D}{U+1F9B2}",  "k":"{U+FE0F}{U+20E3}"}

Hearts := {"w":"{U+1F90D}", "Shift_r":"{U+2764}", "r":"{U+2764}{U+FE0F}", "o":"{U+1F9E1}", "y":"{U+1F49B}", "g":"{U+1F49A}", "b":"{U+1F499}", "p":"{U+1F49C}", "n":"{U+1F90E}", "k":"{U+1F5A4}"}

Circles := {"w":"{U+26AA}", "r":"{U+1F534}", "o":"{U+1F7E0}", "y":"{U+1F7E1}", "g":"{U+1F7E2}", "b":"{U+1F535}", "p":"{U+1F7E3}", "n":"{U+1F7E4}", "k":"{U+26AB}"}

Squares := {"w":"{U+2B1C}", "r":"{U+1F7E5}", "o":"{U+1F7E7}", "y":"{U+1F7E8}", "g":"{U+1F7E9}", "b":"{U+1F7E6}", "p":"{U+1F7EA}", "n":"{U+1F7EB}", "k":"{U+2B1B}"}

Diamonds_Triangles := {"Alt_d":"{U+1F536}", "Ctrl_d":"{U+1F537}", "Shift_d":"{U+1F538}", "d":"{U+1F539}", "Alt_t":"{U+1F53A}", "Ctrl_t":"{U+1F53B}", "Shift_t":"{U+1F53C}", "t":"{U+1F53D}"}

; ----------------------------------------------------------------
; Array for input code of any unicode symbol
; ----------------------------------------------------------------

Unicode := {1:"1", 2:"2", 3:"3", 4:"4", 5:"5", 6:"6", 7:"7", 8:"8", 9:"9", 0:"0", "Space":"0", "m":"1", "sc033":"2", "sc034":"3", "j":"4", "k":"5", "l":"6", "u":"7", "i":"8", "o":"9", "+m":"A", "+sc033":"B", "+sc034":"C", "+sc035":"D", "+j":"E", "+k":"F", "v":"A","b":"B","f":"C","g":"D","r":"E","t":"F"}

; ----------------------------------------------------------------
; Arrays for HEX numbers
; ----------------------------------------------------------------

HexUpper := {"*v":"A", "*b":"B", "*f":"C", "*g":"D", "*r":"E", "*t":"F"}
HexLower := {"*v":"a", "*b":"b", "*f":"c", "*g":"d", "*r":"e", "*t":"f"}

