local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

local status, packer = pcall(require, "packer")
if not status then
  return
end

return packer.startup(function(use)
  use("wbthomason/packer.nvim")

  -- lua functions that many plugins use
  use("nvim-lua/plenary.nvim")

  -- maximizes and restores current window
  use("szw/vim-maximizer")

  -- prettier
  use({
    "prettier/vim-prettier",
    ft = {"javascript", "typescript", "css", "less", "scss", "json"},
    run = "yarn install --frozen-lockfile --production"
  })

  use("tpope/vim-surround")
  use("tpope/vim-endwise")
  use("tpope/vim-eunuch")
  use("tpope/vim-fugitive")
  use("vim-scripts/ReplaceWithRegister")
  use({ "mg979/vim-visual-multi", branch = "master" })
  use("editorconfig/editorconfig-vim")
  use("pbrisbin/vim-mkdir")
  use("APZelos/blamer.nvim")

  -- move lines or words vertically or horizontally
  use("fedepujol/move.nvim")

  -- ruby plugins
  use("tpope/vim-rails")
  use("tpope/vim-rake")
  use("vim-ruby/vim-ruby")

  -- javascript plugins
  use("yuezk/vim-js")
  use("MaxMEllon/vim-jsx-pretty")

  -- CSS and SCSS plugins
  use("ap/vim-css-color")
  use("cakebaker/scss-syntax.vim")
  use("tpope/vim-haml")

  -- Elixir plugins
  use("elixir-editors/vim-elixir") 

  -- run tests directly from nvim
  use("vim-test/vim-test")

  -- commenting
  use("numToStr/Comment.nvim")

  -- Colorscheme
  use("morhetz/gruvbox")

  -- icons
  use("nvim-tree/nvim-web-devicons")

  -- file explorer
  use("nvim-tree/nvim-tree.lua") 

  -- statusline
  use("nvim-lualine/lualine.nvim")

  -- Reveal the commit messages under the cursor
  use("rhysd/git-messenger.vim")

  -- Git commits visualizations
  use("cohama/agit.vim")
  use("airblade/vim-gitgutter")
  use("tyru/open-browser.vim")
  use("tyru/open-browser-github.vim")

  -- treesitter configuration
  use({
    "nvim-treesitter/nvim-treesitter",
    run = function()
      local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
      ts_update()
    end,
  })
  use("nvim-treesitter/nvim-treesitter-context")

  -- fuzzy finding
  use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
  use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" })

  -- autocompletion
  use("hrsh7th/nvim-cmp") -- completion plugin
  use("hrsh7th/cmp-buffer") -- source for text in buffer
  use("hrsh7th/cmp-path") -- source for file system paths

  -- snippets
  use("L3MON4D3/LuaSnip")
  use("rafamadriz/friendly-snippets")

  -- LSP
  use("neovim/nvim-lspconfig")
  use("hrsh7th/cmp-nvim-lsp")
  use("mfussenegger/nvim-lint")

  -- Co Pilot
  use("github/copilot.vim")

  if packer_bootstrap then
    require("packer").sync()
  end
end)
