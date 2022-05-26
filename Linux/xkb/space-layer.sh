XKB_DIR="$HOME/.config/xkb"
XKB_SYMBOL_FILE="space-layer"

# Clear previous settings
setxkbmap
killall xcape

setxkbmap -layout "$XKB_SYMBOL_FILE(sukhe)" -print \
 | xkbcomp -I"$XKB_DIR" - "${DISPLAY%%.*}" >/dev/null 2>&1

xcape -e "ISO_Level5_Shift=space"