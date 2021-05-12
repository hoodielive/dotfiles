" Custom Settings

let mapleader=","

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

" Linting, the absence of titty milk.
" Ale
let g:ale_linters = {
      \'cs': ['OmniSharp'],
      \'javascript': ['flow-language-server'],
      \}
let g:ale_fix_on_save = 1
let g:ale_fixers = {
      \ '*': ['remove_trailing_lines', 'trim_whitespace'],
      \}
let b:ale_linters = ['cs', 'flow-language-server']

"autocmd FileType cs nmap <silent> <buffer> <leader>gd <Plug>(omnisharp_go_to_definition)
autocmd FileType cs nmap <silent> <buffer> <leader><F2> <Plug>(omnisharp_rename)
autocmd FileType cs nmap <silent> <buffer> <leader>ff :OmniSharpCodeFormat<CR>

autocmd FileType cs nmap <silent> gd :OmniSharpGotoDefinition<CR>
autocmd FileType cs nnoremap <buffer> <Leader>fu :OmniSharpFindUsages<CR>
autocmd FileType cs nnoremap <buffer> <Leader>f1 :OmniSharpFindImplementations<CR>
autocmd FileType cs nnoremap <Leader><Space> :OmniSharpGetCodeActions<CR>
