-- Vars.

-- A table to access global variables.
local g = vim.g

local bo = vim.bo

-- Call Vim functions.
local fn = vim.fn

local wo = vim.wo

-- Execute Vim commands e.g. cmd('pwd')
local cmd = vim.cmd

-- Set Vim options.
local opt = vim.opt

-- Shortcut for setting mappings.
local keymap = vim.api.nvim_set_keymap

local opts = { noremap = true }

-- Search these paths.
opt.path = vim.opt.path + '.,**'

-- Keybindings.

-- You will use jj to esc while in insert mode.
keymap('i', 'jj', '<ESC>', opts)
keymap('n', '<C-L>', ':nohl<CR><C-L>', opts)

-- Set indentation rules.
opt.expandtab = true
opt.shiftwidth = 2
opt.softtabstop = 2
opt.shiftround = true

-- Sounds like something I want to use lol.
opt.wildmode = 'longest:full,full'

-- Show me trailing spaces and indents.
opt.list = true
opt.listchars = 'tab:▸ ,trail:·' -- make these beautiful with hack fonts.

-- Maintain indent of current line.
opt.autoindent = true

-- Allow unrestricted backspacing in insert mode.
opt.backspace ='indent,start,eol'

-- Don't make backups before writing.
opt.backup = false

-- I do want backups tho.
opt.backup = true 
opt.backupdir = '~/.local/share/nvim/backup//'

-- Highlight current line.
opt.cursorline = false

-- Determine vim swap directory.
opt.directory = '~/.config/nvim/swap//,.'

-- Show menu box even if there is only 1 option
-- However, do not automatically select it.
opt.completeopt = 'menuone,noselect'

-- Shows the effects of a command incrementally. 
opt.inccommand = 'nosplit'

-- Use a swap file for buffer.
opt.swapfile = true

-- Enable mouse support.
opt.mouse = 'a'

-- Show relative column and character.
opt.ruler = true

-- Don't show me which mode I'm in. I'm grown. 
opt.showmode = false

-- Show commands.
opt.showcmd = true

-- sigh.
opt.laststatus = 2
opt.ignorecase = true
opt.incsearch = true
opt.hlsearch = true

-- Persistent undo.
vim.undofile = true

-- Set scrolloff to 3.
opt.scrolloff = 3

-- When we split the screen it should go to the right.
opt.splitright = true

-- Ask me questions before you overwrite my shit.
opt.confirm = true

-- Show the title.
opt.title = true

-- Show hidden.
opt.hidden = true

-- Directory.
opt.dir = '/tmp'

-- Install packer.nvim as our plugin manager.
-- There are however others that are a bit more minimal e.g. paq-nvim.
-- You could however continue to use vim-plug. 
local execute = vim.api.nvim_command
local install_path = vim.fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
end

vim.cmd [[packadd packer.nvim]]
vim.api.nvim_exec([[
  augroup Packer
    autocmd!
    autocmd BufWritePost plugins.lua PackerCompile
  augroup end
]], false)

local use = require('packer').use
require('packer').startup(function()
  use {'wbthomason/packer.nvim', opt = true}
  use 'kana/vim-smartinput' -- auto close delimiters
  use 'tpope/vim-commentary'
  use {'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}} }
  use 'joshdick/onedark.vim'
  use 'itchyny/lightline.vim'
  -- use { 'lukas-reineke/indent-blankline.nvim', branch="master" }
  use 'neovim/nvim-lspconfig'
  -- Provides autocompletion and is completely written in lua.
  use 'hrsh7th/nvim-compe'
  -- snippets -- why should you type when you can get your minions to do it for you?
  use 'sirver/ultisnips' -- the engine 
  use 'honza/vim-snippets' -- the coal (the actuall snippets)
  use 'nvim-treesitter/nvim-treesitter'
  use {
  'ojroques/nvim-lspfuzzy',
  requires = {
    {'junegunn/fzf'},
    {'junegunn/fzf.vim'},  -- to enable preview (optional)
  },
}
  use 'dracula/vim'
  use 'daylerees/colour-schemes'
end)

opt.background = 'dark'
cmd 'colorscheme peachpuff'

-- Configure treesitter.
local ts = require 'nvim-treesitter.configs'
ts.setup {ensure_installed = 'maintained', highlight = { enable = true }, indent = { enable = true}}

