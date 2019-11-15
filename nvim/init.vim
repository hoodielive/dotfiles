" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align

Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed

Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators

Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Yayy load stuff.

Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch

Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)

Plug 'fatih/vim-go', { 'tag': '*' }

" GoCode and Stuff.

Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Automatically close the damn brackets, braces, etc., 

Plug 'jiangmiao/auto-pairs'

" I'd like to have emmet for my dev projects.

Plug 'mattn/emmet-vim'

" Polyglot 
Plug 'sheerun/vim-polyglot'

" Vim Surround

Plug 'tpope/vim-surround'

" Vim Repeat

Plug 'tpope/vim-repeat'

" Make code pretty

Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" Ctrl+p to locate files | :e <>

Plug 'ctrlpvim/ctrlp.vim'

" Try this ugly crap. 
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'

" Vim8-Solarized8 Nice.

Plug 'lifepillar/vim-solarized8'

" Command+t is a plugin that provides extremely fast "fuzzy" mechanism
" for opening files/buffers, jumping to tags and help and 
" running commands or previous searches and commands by wincent.

Plug 'wincent/command-t'

" Enhanced terminal integration with Vim.

Plug 'wincent/terminus'

" Ferret for global searches.

Plug 'wincent/ferret'

" So loupe tames highlights and provides some pretty cool sensible defaults.

Plug 'wincent/loupe'

" Magit to simplify git commits.

Plug 'jreybert/vimagit'

" Vinegar is a better way to search dir(s).

Plug 'tpope/vim-vinegar'

" Neoclide Autocompletion: see https://github.com/neoclide/coc.nvim.

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Ack is for fast searching. 

Plug 'mileszs/ack.vim'

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

" Initialize plugin system

call plug#end()

" Custom Settings 

" jj to Escape Insert mode.  

inoremap jj <ESC>

" Control Identation.

set tabstop=4
set shiftwidth=4
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2                                                   
autocmd FileType html setlocal shiftwidth=2 tabstop=2

" Airline themes
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#themes#molokai#palette = {}

" Color scheme settings.

set background=dark
"colorscheme solarized8_high
colorscheme koehler

" Exeburant ctags - installed via apt
set tags=tags;
