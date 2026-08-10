#
# ~/.bashrc
#
#           █   ▄▄▄▄   ▄▄▄   ▄▄▄▄ ▄▄ ▄▄ ▄▄▄▄   ▄▄▄▄
# ▄▀▀▄  █  █    ██▄██ ██▀██ ███▄▄ ██▄██ ██▄█▄ ██▀▀▀
# ▀   ▀▀  █   ▄ ██▄█▀ ██▀██ ▄▄██▀ ██ ██ ██ ██ ▀████


[[ $- != *i* ]] && return

# Settings
stty -ixon
shopt -s autocd

source $HOME/.config/shell/aliasrc

# Environmental Variables
export \
	PS1="\[$(tput setaf 10)\]\u\[$(tput setaf 10)\]@\[$(tput setaf 10)\]\h \[$(tput setaf 12)\]\w \$\[$(tput sgr0)\] " \
	EDITOR=vim \
	BROWSER=firefox \
	FZF_DEFAULT_OPTS="--layout=reverse --height 40%"
