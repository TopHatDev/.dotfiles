#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='\W \$ '

if [ -e /home/alec/.bashconfig/colorSchemeShow.sh ]
then
	bash /home/alec/.bashconfig/colorSchemeShow.sh
fi

PATH="$HOME/.local/bin${PATH:+:${PATH}}"  # adding .local/bin to $PATH
