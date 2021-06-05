setxkbmap -layout us,il
setxkbmap -option 'grp:alt_shift_toggle'
xmodmap -e "pointer = 3 2 1 "

xset fp+ /usr/share/fonts/3270/
xset fp rehash
