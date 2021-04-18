" Custom Settings

" The encoding displayed.
set encoding=utf-8

" The encoding written to the file.
set fileencoding=utf-8

" More space for displaying messages.
set cmdheight=2

" Enable Mouse.
set mouse=a

" Makes popup menu smaller.
set pumheight=10

" Horizontal splits will automatically be below.
set splitbelow

" Vertical splits will automatically be to the right.
set splitright

" So you tabbing isn't stupid.
set smarttab

" Make indenting less stupid.
set smartindent

" Don't show me shit like Insert anymore.
" set noshowmode

" By default its 1000ms.
set timeoutlen=500

" Stop newline continuation of comments.
set formatoptions-=cro

" Copy between vim and everything else.
set clipboard=unnamedplus

" If I need sudo, sudo.
cmap w!! w !sudo tee %

" Soure upon save.
au! BufWritePost $MYVIMRC source %

" New map leader.
let mapleader=","

" jj to Escape Insert mode.
inoremap jj <ESC>

" Control Identation.
set tabstop=2
set shiftwidth=2
autocmd FileType python setlocal shiftwidth=4 tabstop=4

" Color scheme settings.
" set background=dark
"colorscheme solarized8_high
colorscheme afterglow
"let ayucolor="dark"
set termguicolors
"colorscheme ayu
"colorscheme koehler
"colorscheme PaperColor

" Airline themes
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#themes#molokai#palette = {}
" Exeburant ctags - installed via apt
set tags=tags;

" Linting, the absence of titty milk.
" Ale
"let g:ale_linters = {
"      \'cs': ['OmniSharp'],
"      \'javascript': ['flow-language-server'],
"      \}
"let g:ale_fix_on_save = 1
"let g:ale_fixers = {
"      \ '*': ['remove_trailing_lines', 'trim_whitespace'],
"      \}
"let b:ale_linters = ['cs', 'flow-language-server']
"let g:LanguageClient_diagnosticsEnable=0

" I am sorry but that damn gutter from coc.nvim has to go.
set signcolumn=auto:3

"autocmd FileType cs nmap <silent> <buffer> <leader>gd <Plug>(omnisharp_go_to_definition)
autocmd FileType cs nmap <silent> <buffer> <leader><F2> <Plug>(omnisharp_rename)
autocmd FileType cs nmap <silent> <buffer> <leader>ff :OmniSharpCodeFormat<CR>

autocmd FileType cs nmap <silent> gd :OmniSharpGotoDefinition<CR>
autocmd FileType cs nnoremap <buffer> <Leader>fu :OmniSharpFindUsages<CR>
autocmd FileType cs nnoremap <buffer> <Leader>f1 :OmniSharpFindImplementations<CR>
autocmd FileType cs nnoremap <Leader><Space> :OmniSharpGetCodeActions<CR>
