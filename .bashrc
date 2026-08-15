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
#
# PS1="\[$(tput setaf 10)\]\u\[$(tput setaf 10)\]@\[$(tput setaf 10)\]\h \[$(tput setaf 12)\]\w \$\[$(tput sgr0)\] " \

PS1="[\[$(tput setaf 10)\]\u@\h\[$(tput setaf 12)\] \w\[$(tput sgr0)\]]\$ "
export \
	EDITOR=vim \
	BROWSER=firefox \
	FZF_DEFAULT_OPTS="--layout=reverse --height 40% --border --ignore-case --prompt '>>> '"

source ~/.config/shell/fzf.bash
source ~/.config/shell/gh.bash
