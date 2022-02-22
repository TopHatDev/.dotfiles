
#-----------------------------
#Source some stuff
#-----------------------------
if [[ -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]]; then
  . /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

if [ -e /home/alec/.bashconfig/colorSchemeShow.sh ]
then
	bash /home/alec/.bashconfig/colorSchemeShow.sh
fi

BASE16_SHELL="$HOME/.config/base16-shell/base16-default.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

powerline-daemon -q
. /usr/share/powerline/bindings/zsh/powerline.zsh

#------------------------------
# History stuff
#------------------------------
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000


# Comp Stuff
zmodload zsh/complist
autoload -Uz promptinit
autoload -Uz compinit
compinit
promptinit


plugins=(
	zsh-autosuggestions
)

zstyle ':completion:*' menu select
zstyle zstyle ':completion::complete:*' gain-privileges 1
zstyle ':prompt:grml:*:items:user' pre '%F{cyan}'

zstyle ':prompt:grml:*:items:path' pre '%F{6}┃%K{6}%F{black} '
zstyle ':prompt:grml:*:items:path' post '%k%b%F{6}│%f '

zstyle ':prompt:grml:*:items:vcs' pre '%F{13}%f%K{13}'

zstyle ':prompt:grml:*:items:time' pre '%F{3}%F{black}%K{3}'

zstyle ':prompt:grml:*:items:host' pre '%F{6}%F{black}%K{6}'
zstyle ':prompt:grml:*:items:host' post '%k%F{6}┃%f%b'

zstyle ':prompt:grml:left:setup' items change-root path
zstyle ':prompt:grml:right:setup' items rc vcs time host

# This will set the default prompt to the walters theme
prompt fade magenta

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

typeset -U PATH path
path=("$HOME/.local/bin" /other/things/in/path "$path[@]")
export PATH

#setprompt() {
#	setopt prompt_subst
#
#	if [[ -n "$SSH_CLIENT"  ||  -n "$SSH2_CLIENT" ]]; then 
#		p_host='%F{yellow}%M%f'
#	else
#			p_host='%F{green}%M%f'
#	fi
#
#		PS1=${(j::Q)${(Z:Cn:):-$'
#			%F{cyan}[%f
#			%(!.%F{red}%n%f.%F{green}%n%f)
#			%F{cyan}@%f
#			${p_host}
#			%F{cyan}][%f
#			%F{blue}%~%f
#			%F{cyan}]%f
#			%(!.%F{red}%#%f.%F{green}%#%f)
#			" "
#			'}}
#
#		PS2=$'%_>'
#		RPROMPT=$'${vcs_info_msg_0_}'
#}
#setprompt

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
