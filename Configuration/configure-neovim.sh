#!/usr/bin/env bash 

in_path_neovim()
{
  cmd='nvim'
  ourpath='/usr/bin'
  result=1
  oldIFS=$IFS
  IFS=":"

  for directory in "$ourpath"
  do
    if [ -x $directory/$cmd ]; then
      result=0
    fi
done

IFS=$oldIFS
return $result
}


# Install xxf theme.

git clone https://github.com/xfanwu/oh-my-zsh-custom-xxf.git ~/.oh-my-zsh/themes/xxf

cp ~/.oh-my-zsh/themes/xxf/themes/xxf.zsh-theme ~/.oh-my-zsh/themes/

rm -rf ~/.oh-my-zsh/themes/xxf

sed -i 's/ZSH_THEME=robbyrussell/ZSH_THEME=xxf/' ~/.zshrc

# Neovim.

# Is neovim installed?

in_path_neovim

# If not install it.

if  [ $result == 0 ]; then
    sudo apt install neovim -y
else
    echo "Its already installed"
fi

# Is neovim installed and configured? 


# If not, configure it Vim-plug.

if [ -d ~/.config/nvim ]; then 
   echo "Directory is already created"
else
   mkdir ~/.config/nvim
fi

# Install vim plug.

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


# Construct init.vim

cat <<EOF> ~/.config/nvim/init.vim
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

" Initialize plugin system
call plug#end()

" jj Should escape from insert mode.
inoremap jj <ESC>
EOF

source ~/.zshrc
