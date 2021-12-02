" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" Plugins Configurations.

autocmd VimEnter *
	\ if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
	\| PlugInstall --sync | q
	\| endif

source $HOME/.config/nvim/coc.vim
source $HOME/.config/nvim/plugins.vim
"source $HOME/.config/nvim/themes/airline.vim
source $HOME/.config/nvim/settings.vim
source $HOME/.config/nvim/rnvimr.vim
source $HOME/.config/nvim/mappings.vim
