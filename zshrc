# -*- shell-script -*-

ZSHDIR=$HOME/prog/dotfiles

ZSH=$HOME/.oh-my-zsh
ZSH_THEME=robbyrussell

plugins=(archlinux git svn)

CASE_SENSITIVE=true
COMPLETION_WAITING_DOTS=true
HIST_IGNORE_SPACE=true

source $ZSH/oh-my-zsh.sh
source $ZSHDIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# disable autocorrect
unsetopt correctall

# source in private stuff
source $HOME/.zshrc.private 2> /dev/null

# other settings
export EDITOR='emacsclient -t'
export SVN_EDITOR="$EDITOR"

alias pdf='mupdf'
alias vi="$EDITOR"
alias vim="$EDITOR"

alias grep='grep --color=always'

export GOPATH="$HOME/prog/go"
export PATH="/usr/lib/colorgcc/bin:$PATH"

# mpc completion
. /usr/share/doc/mpc/mpc-completion.bash || true
