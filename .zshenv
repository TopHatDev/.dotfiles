typeset -U path PATH
path=(~/.local/bin $path)
export PATH

typeset -U path XDG_CONFIG_HOME
path=($HOME/.config $path)
export XDG_CONFIG_HOME
