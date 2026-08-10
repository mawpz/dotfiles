#!/usr/bin/env zsh
#
# ~/.zshrc
#

autoload -U colors && colors
setopt autocd
setopt interactive_comments
stty stop undef

export PS1="%{$fg[green]%}%n@%M %{$fg[blue]%}%~ $%{$reset_color%} "
export EDITOR=vim
export BROWSER=firefox

## Completions
autoload -U compinit

zstyle ':completion:*' menu select
zstyle ':completion:*:*:cp:*' file-sort size
zstyle ':completion:*' file-sort modification
zstyle ':completion:*:*:*:*:descriptions' format '%F{green}-- %d --%f'
zstyle ':completion:*:*:*:*:corrections' format '%F{yellow}!- %d (errors: %e) -!%f'
zstyle ':completion:*:messages' format ' %F{purple} -- %d --%f'
zstyle ':completion:*:warnings' format ' %F{red}-- no matches found --%f'
zstyle ':completion:*' group-name ''
zstyle ':completion:*:*:-command-:*:*' group-order alias builtins functions commands
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

setopt ALWAYS_TO_END
setopt LIST_PACKED
zmodload zsh/complist
compinit
_comp_options+=(globdots)

HISTSIZE=10000000
SAVEHIST=10000000
export HISTFILE="$HOME/.config/zsh_history"

. /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
. /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
. $HOME/.config/shell/aliasrc
