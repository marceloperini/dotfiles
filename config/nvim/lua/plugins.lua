return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- General
  use 'rhysd/git-messenger.vim'                      -- Reveal the commit messages under the cursor | https://github.com/rhysd/git-messenger.vim
  use 'cohama/agit.vim'                              -- Git commits visualizations                  | https://github.com/cohama/agit.vim
  use 'dense-analysis/ale'                           -- Asynchronous Lint Engine                    | https://github.com/dense-analysis/ale
  use 'tpope/vim-fugitive'                           -- Tim Pope's Git wrapper                      | https://github.com/tpope/vim-fugitive
  use 'tpope/vim-surround'                           -- Quoting/parenthesizing made simple          | https://github.com/tpope/vim-surround
  use 'tpope/vim-endwise'                            -- Close structures automatically              | https://github.com/tpope/vim-endwise
  use 'tpope/vim-eunuch'                             -- UNIX commands on Vim                        | https://github.com/tpope/vim-eunuch
  use 'f-person/git-blame.nvim'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  use { 'prettier/vim-prettier', run = 'yarn install --frozen-lockfile --production' }

  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons',
    },
    config = function() require'nvim-tree'.setup {} end
  }

  use 'preservim/nerdcommenter'                      -- Comment functions                           | https://github.com/preservim/nerdcommenter
  use 'godlygeek/tabular'
  use { 'mg979/vim-visual-multi', branch = 'master' } -- Multiple cursors plugin for vim/neovim      | https://github.com/mg979/vim-visual-multi
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
  use { 'iamcco/markdown-preview.nvim', run = function() vim.fn['mkdp#util#install()'](0) end, ft = {'markdown', 'vim-plug'} }
  use 'airblade/vim-gitgutter'
  use 'tyru/open-browser.vim' -- open-browser-github dependency
  use 'tyru/open-browser-github.vim'
  use 'pbrisbin/vim-mkdir'
  use 'maxbrunsfeld/vim-yankstack'
  use 'KabbAmine/zeavim.vim'
  use 'editorconfig/editorconfig-vim'

  -- Languages
  use 'ap/vim-css-color'
  use 'cakebaker/scss-syntax.vim'
  use 'elixir-editors/vim-elixir'
  use 'yuezk/vim-js'
  use 'MaxMEllon/vim-jsx-pretty'
  -- use 'rust-lang/rust.vim'
  use { 'slim-template/vim-slim', ft = {'slim'} }
  use 'tpope/vim-rails'                  -- Ruby on Rails power tools                   | https://github.com/tpope/vim-rails
  use 'tpope/vim-rake'
  use 'vim-ruby/vim-ruby'
  use 'vim-test/vim-test' -- Run your tests at the speed of thought | https://github.com/janko/vim-test

  -- LSP
  use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  use 'rafamadriz/friendly-snippets'

  -- Colorscheme
  use 'morhetz/gruvbox'
end)
