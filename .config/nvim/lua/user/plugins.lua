local fn = vim.fn

-- Automatically install packer 
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first us
local packer = require("packer")
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  print("Failed")
  return
end

-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here
  use 'wbthomason/packer.nvim' -- Have packer manage itself

  -- cmp 
  use 'hrsh7th/nvim-cmp' 
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path' 
  use 'saadparwaiz1/cmp_luasnip' -- snippet completions
  use 'hrsh7th/cmp-nvim-lsp'

  -- snippets
  use 'L3MON4D3/LuaSnip' -- snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- LSP
  use 'williamboman/mason.nvim' -- pkg mngr for LSP
  use 'williamboman/mason-lspconfig.nvim' -- setup between nvim and LSP
  use 'neovim/nvim-lspconfig' -- enable LSP

  -- Automatically set up your config after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then 
    require("packer").sync()
  end
end)

