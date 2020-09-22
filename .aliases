# Exports
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# homebrew sbin in PATH
export PATH="/usr/local/sbin:$PATH"

# rust
export PATH="$PATH:$HOME/.cargo/bin"

# go
export GOPATH=$HOME/.config/go
export GOBIN=$HOME/.config/go/bin
export PATH=$PATH:$GOBIN
export PATH=$PATH:$GOPATH


# emacs that bitch mac is making your life hell
# export PATH="$PATH:/usr/local/bin/emacs"
# export EDITOR='emacsclient -a ~/.shut-up-emacs-client.sh'
export EDITOR="nvim"

# To use the bundled libc++ please add the following LDFLAGS:
# LDFLAGS="-L/usr/local/opt/llvm@6/lib -Wl,-rpath,/usr/local/opt/llvm@6/lib"

# llvm@6 is keg-only, which means it was not symlinked into /usr/local,
# because this is an alternate version of another formula.

# If you need to have llvm@6 first in your PATH run:
export PATH="/usr/local/opt/llvm@6/bin:$PATH"

# For compilers to find llvm@6 you may need to set:
export LDFLAGS="-L/usr/local/opt/llvm@6/lib"
export CPPFLAGS="-I/usr/local/opt/llvm@6/include"
export PATH="/usr/local/opt/llvm/bin:$PATH"

#@Python3.8 baby!
#export PATH="/usr/local/opt/python@3.8/bin:$PATH"

# aliases
alias mv="mv -v"
alias cp="cp -v"
alias pg="pg_ctl"
alias emacs="emacs -nw"
alias clones="cd ~/Clones"
alias vlrst=clear
alias hl="highlight"
alias eve="eval $(ssh-agent -s)"
alias siz="source ~/.zshrc && echo Sourced Sir!"
alias nvimconfig="nvim ~/.config/nvim/init.vim"
alias gitssh="ssh-add ~/.ssh/git_ecdsa && ssh -T git@github.com"
alias bitch="eve; gitssh"
alias openaliases="nvim ~/.aliases"
alias gotonvim="cd ~/.config/nvim"
alias blackmagus="ssh blackmagus@blackmagus"
#alias hyperconfig="nvim /mnt/c/Users/AsiriSogo/AppData/Roaming/Hyper/.hyper.js"

# Downloads
#alias downloads="cd /mnt/c/Users/AsiriSogo/Downloads"
alias downloads="cd ~/Downloads"

# ctags based on distribution
# alias ctags="/usr/local/Cellar/ctags/5.8_1/bin/ctags"

# Clean-up Utilities
alias squery="find . -type f -iname '*.srt'"
alias squerykill="find . -type f -iname '*.srt' -exec rm -rf {} \;"

# Relative to MONGODB
# ==> Caveats
#To have launchd start mongodb/brew/mongodb-community now and restart at login:
#  brew services start mongodb/brew/mongodb-community
#Or, if you don't want/need a background service you can just run:
#  mongod --config /usr/local/etc/mongod.conf

# Functions
# Stop emacs from hanging during tramp mode
if [[ "$TERM" == "dumb" ]]; then
	unset zle_bracketed_paste
	unset zle
	PS1='$ '
	return
fi
export PATH="/usr/local/opt/php@7.3/sbin:$PATH"
export PATH="/home/awo/.local/bin:$PATH"

#source ~/.antigen.zsh
#source ~/.antigenrc
