#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export GTAGSLABEL=ctags
export PATH=$HOME/programming/go/bin:/usr/local/bin:$HOME/.local/bin:$PATH
export GOPATH=~/programming/go
export FZF_DEFAULT_COMMAND="ag -g"
eval `ssh-agent`
ssh-add ~/.ssh/id_rsa
ssh-add ~/.ssh/dsp-data
ssh-add ~/.ssh/data-uswest2.pem
ssh-add ~/.ssh/data-uswest.pem
xrandr --output DP1   --mode 1920x1080 --right-of HDMI2

exec i3 -V >>  ~/.i3log/i3log-$(date +'%F-%k-%M-%S') 2>&1
