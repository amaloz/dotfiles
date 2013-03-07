# .zshrc

ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
CASE_SENSITIVE="true"
COMPLETION_WAITING_DOTS="true"
HIST_IGNORE_SPACE="true"

plugins=(archlinux git svn)

source $ZSH/oh-my-zsh.sh

# source in private stuff
source $HOME/.zshrc.private 2> /dev/null

export EDITOR='emacsclient -t'
export SVN_EDITOR="$EDITOR"

alias pdf='mupdf'
alias vi="$EDITOR"
alias vim="$EDITOR"
alias skype='xhost +local: && su skype -c /usr/bin/skype'

export GOPATH="$HOME/prog/go"
export PATH="/usr/lib/colorgcc/bin:$PATH"
