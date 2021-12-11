#
# ~/.bash_profile
#

export GTK_IM_MODULE='fcitx'
export QT_IM_MODULE='fcitx'
export SDL_IM_MODULE='fcitx'
export XMODIFIERS='@im=fcitx'
export XDG_XONFIG_HOME='~/.config'

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [ -n "$DESKTOP_SESSION" ];then
	    eval $(gnome-keyring-daemon --start)
	        export SSH_AUTH_SOCK
fi

SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

[[ $(fgconsole 2>/dev/null) == 1 ]] && startx -- vt1
