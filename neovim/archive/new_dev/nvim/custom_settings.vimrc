" Custom Settings 

" jj to Escape Insert mode.  
inoremap jj <ESC>

" Control Identation.
set tabstop=2
set shiftwidth=2
autocmd FileType python setlocal shiftwidth=4 tabstop=4

" Color scheme settings.
set background=dark
let ayucolor="dark"
"colorscheme solarized8_high
"colorscheme PaperColor
colorscheme ayu
"colorscheme koehler
set termguicolors
" Airline themes
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#themes#molokai#palette = {}
" Exeburant ctags - installed via apt

set tags=tags;
