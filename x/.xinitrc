# make sure everything in xinitrc.d is sourced
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
    for f in /etc/X11/xinit/xinitrc.d/?* ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

#set the curson
xsetroot -cursor_name left_ptr

# set Dvorak keyboard layout
setxkbmap -layout dvorak

# initialize Xresources
xrdb -merge ~/.Xresources


# machine specific settings here
if [ -f ~/.xinitrc.local ];
then
  ~/.xinitrc.local
fi

# put your wm of choice in ~/.wm
if [ -f ~/.wm ];
then
  ~/.wm
fi
