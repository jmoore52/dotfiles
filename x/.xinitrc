#set the curson
xsetroot -cursor_name left_ptr

# set Dvorak keyboard layout
setxkbmap -layout dvorak

# initialize Xresources
xrdb -merge ~/.Xresources

trayer --edge top --align right --SetDockType true --SetPartialStrut true \
 --expand true --width 10 --transparent true --tint 0x191970 --height 12 &

# start xmonad
exec xmonad
