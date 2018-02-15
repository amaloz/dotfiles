# -*- shell-script -*-

ZSHDIR=$HOME/prog/mine/dotfiles
ZSH=$ZSHDIR/oh-my-zsh

ZSH_THEME=robbyrussell

plugins=(archlinux git svn)

CASE_SENSITIVE=true
COMPLETION_WAITING_DOTS=true
HIST_IGNORE_SPACE=true

source $ZSHDIR/oh-my-zsh/oh-my-zsh.sh
source $ZSHDIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# disable autocorrect
unsetopt correctall

# other settings
export EDITOR='emacsclient -t'
export SVN_EDITOR="$EDITOR"

alias pdf='mupdf'
alias vi="$EDITOR"

alias grep='grep --color=always'

eval `dircolors $HOME/.dir_colors`

# fancy less (need lesspipe and pygmentize)
export LESSOPEN="| pygmentize -O bg=dark -g %s"

alias lest='less -L'
