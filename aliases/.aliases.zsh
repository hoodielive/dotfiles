# Exports

# put sbin in PATH
export PATH="/usr/local/sbin:$PATH"
export PATH=/home/$USER/.local/bin:$PATH

# rust
export PATH="$PATH:$HOME/.cargo/bin"

# go
export GOPATH=$HOME/.config/go
export GOBIN=$HOME/.config/go/bin
export PATH=$PATH:$GOBIN
export PATH=$PATH:$GOPATH

# node
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # Loads nvm bash_completion

# nim
export PATH=/home/$USER/.local/nim-1.4.2/bin:$PATH

# emacs
# emacs that bitch mac is making your life hell
# export PATH="$PATH:/usr/local/bin/emacs"
# export EDITOR='emacsclient -a ~/.shut-up-emacs-client.sh'
export EDITOR="nvim"
export NVIM_LISTEN_ADDRESS=/tmp/nvimsocket

# Remove all these eff'n Windows bin(s) from $PATH:
export PATH=$(echo $PATH | tr ':' '\n' | awk '($0!~/mnt\/c/) {print} ' | tr '\n' ':')

# To use the bundled libc++ please add the following LDFLAGS:
# LDFLAGS="-L/usr/local/opt/llvm@6/lib -Wl,-rpath,/usr/local/opt/llvm@6/lib"

# llvm@6 is keg-only, which means it was not symlinked into /usr/local,
# because this is an alternate version of another formula.

# If you need to have llvm@6 first in your PATH run:
export PATH="/usr/local/opt/llvm@6/bin:/opt/puppetlabs/bin:$PATH"

# For compilers to find llvm@6 you may need to set:
export LDFLAGS="-L/usr/local/opt/llvm@6/lib"
export CPPFLAGS="-I/usr/local/opt/llvm@6/include"
export PATH="/usr/local/opt/llvm/bin:$PATH"

# PDK is being a dick. So lets add the little fucker to $PATH
export PATH=/usr/local/bin:$PATH

# Configuration Management.
alias gtc="cd ~/.config"

# Puppet aliases.
alias proot="cd /etc/puppetlabs/puppet"
alias prod="/etc/puppetlabs/code/environments/production"
alias pmods="cd /etc/puppetlabs/code/environments/production/modules"

# Apt aliases.
alias install="sudo apt install $1"

# Manage Neovim.
export PATH=/home/$USER/.nvim-linux64/bin:$PATH
alias nv="nvim ~/.config/nvim/init.vim"
alias nv2="nvim ~/.config/nvim/settings.vim"
alias nvp="nvim ~/.config/nvim/plugins.vim"
alias mappings="nvim ~/.config/nvim/mappings.vim"
alias nvu="nvim +PlugInstall +PlugUpdate +UpdateRemotePlugins"
alias nvi="nvim +PlugInstall"
alias nvc="nvim ~/.config/nvim/coc.vim"
alias gnv="cd ~/.config/nvim"

# DB aliases.
alias pg="pg_ctl"

# Utility aliases.
alias mv="mv -v"
alias cp="cp -v"
alias nvi="nvim"
alias emacs="emacs -nw"
alias clones="cd ~/Clones"
alias themer="ls ~/.oh-my-zsh/themes"
alias dope="cd ~/Clones/dope"
alias dopel="ll ~/Clones/dope"
alias vlrst=clear
alias hl="highlight"
alias eve="eval $(ssh-agent -s)"
alias siz="source ~/.zshrc && echo Sourced Master!"
alias gitssh="ssh-add ~/.ssh/git_ecdsa && ssh -T git@github.com"
alias bitch="eve; gitssh"
alias oa="nvim ~/.aliases.zsh"
alias blackmagus="ssh blackmagus@blackmagus"
#alias hyperconfig="nvim /mnt/c/Users/$USER/AppData/Roaming/Hyper/.hyper.js"
#alias code="/mnt/c/Users/$USER/AppData/Local/Programs/Microsoft\ VS\ Code/bin/code"
#alias love="/mnt/c/Program\ Files/LOVE/love.exe"

# Downloads
alias downloads="cd /mnt/c/Users/$USER/Downloads"
alias downloads="cd ~/Downloads"

# ctags based on distribution
# alias ctags="/usr/local/Cellar/ctags/5.8_1/bin/ctags"

# Fuck off Microsoft.
DOTNET_CLI_TELEMETRY_OPTOUT=1

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
export PATH="/home/$USER/.local/bin:$PATH"
export PATH="/home/$USER/.config/composer/vendor/bin:$PATH"
