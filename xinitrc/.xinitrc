eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)
export SSH_AUTH_SOCK
setxkbmap -option caps:swapescape


# run i3 on VTNR 3
if [[ $XDG_VTNR -eq 3 ]]; then
    exec i3
fi

# run bspwm on VTNR 1
if [[ $XDG_VTNR -eq 1 ]]; then
    export _JAVA_AWT_WM_NONREPARENTING=1 # For bad java applications...
    exec bspwm
fi

# run gnome on VTNR 2
if [[ $XDG_VTNR -eq 2 ]]; then
    export XDG_SESSION_TYPE=x11
    export GDK_BACKEND=x11
    exec gnome-session
fi
