-- Vars.
local g = vim.g
local opt = vim.opt
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true }
local fn = vim.fn

-- You will use jj to esc while in insert mode.
keymap('i', 'jj', '<ESC>', opts)

-- Always use 2 spaces instead of tabs.
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2

-- Maintain indent of current line.
vim.opt.autoindent = true

-- Allow unrestricted backspacing in insert mode.
vim.opt.backspace ='indent,start,eol'

-- Don't make backups before writing.
vim.opt.backup = false

-- Highlight current line.
vim.opt.cursorline = false

-- Determine vim swap directory.
vim.opt.directory = '~/.config/nvim/swap//,.'

-- Plugins
local execute = vim.api.nvim_command
local install_path = fn.stdpath('data')..'/site/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

vim.cmd [[packadd packer.nvim]]
vim.api.nvim_exec([[
  augroup Packer
    autocmd!
    autocmd BufWritePost plugins.lua PackerCompile
  augroup end
]], false)

-- return require('packer').startup(function(use)
local use = require('packer').use
require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use 'tpope/vim-vinegar'
	use 'vimwiki/vimwiki'
	use 'dracula/vim'
	use 'rhysd/devdocs.vim'
	use '0x84/vim-coderunner'
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/nvim-compe'
	use 'iamcco/markdown-preview.nvim'
	use 'simrat39/rust-tools.nvim'
	-- Debugging
	use 'nvim-lua/plenary.nvim'
	use 'mfussenegger/nvim-dap'
	use 'windwp/nvim-autopairs'
	use 'svermeulen/vimpeccable'
        use 'kana/vim-smartinput'
	-- Automatically set up your configuration after cloning packer.nvim.
	-- Put this at the end after all plugins.
	if packer_bootstrap then
		require('packer').sync()
	end
end)

