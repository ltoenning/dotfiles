eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)
export SSH_AUTH_SOCK
setxkbmap -option caps:swapescape

# run bspwm on VTNR 1
if [[ $XDG_VTNR -eq 1 ]]; then
    export _JAVA_AWT_WM_NONREPARENTING=1 # For bad java applications...
    exec bspwm
fi
