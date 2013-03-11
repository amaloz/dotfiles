# -*- zshrc -*-

# antigen
source $HOME/prog/dotfiles/antigen/antigen.zsh
antigen-lib
antigen-bundle archlinux
antigen-bundle command-not-found
antigen-bundle git
antigen-bundle svn
antigen-bundle zsh-users/zsh-syntax-highlighting
antigen-theme robbyrussell
antigen-apply

# oh-my-zsh settings
CASE_SENSITIVE="true"
COMPLETION_WAITING_DOTS="true"
HIST_IGNORE_SPACE="true"

# source in private stuff
source $HOME/.zshrc.private 2> /dev/null

# other settings
export EDITOR='emacsclient -t'
export SVN_EDITOR="$EDITOR"

alias pdf='mupdf'
alias vi="$EDITOR"
alias vim="$EDITOR"
alias skype='xhost +local: && su skype -c /usr/bin/skype'

export GOPATH="$HOME/prog/go"
export PATH="/usr/lib/colorgcc/bin:$PATH"
