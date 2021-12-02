-- Settings. 

-- Vars.
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true }
local execute = vim.api.nvim_command
local fn = vim.fn
local packer_install_path = fn.stdpath('data')..'/site/packer/start/packer.nvim'

if fn.empty(fn.glob(packer_install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', packer_install_path})
end

-- Always use 2 spaces instead of tabs.
vim.bo.expandtab = true
vim.bo.shiftwidth = 2
vim.bo.softtabstop = 2

-- Maintain indent of current line. 
vim.opt.autoindent = true

-- Allow unrestricted backspacing in insert mode. 
vim.opt.backspace = 'indent,start,eol'

-- Don't make backups before writing.
vim.opt.backup = false

-- Highlight current line.
vim.opt.cursorline = false 

-- Determine vim swap directory. 
vim.opt.directory = '~/.config/nvim/swap//,.'

-- Key Bindings.

-- You will use jj to esc while in insert mode.
keymap('i', 'jj', '<ESC>', opts)

-- Plugins
return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'tpope/vim-vinegar'
  use 'vimwiki/vimwiki'
  use 'dracula/vim'
  use 'rhysd/devdocs.vim'
  use '0x84/vim-coderunner'
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-compe'
  use 'iamcco/markdown-preview.nvim'
  -- Automatically set up your configuration after cloning packer.nvim.
  -- Put this at the end after all plugins.
  if packer_bootstrap then
    require('packer').sync()
  end
end)

-- Colors. 
-- vim.g.colors_name = 'dracula'

