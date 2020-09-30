if !filereadable(vimplug_exists)
  if !executable("curl")
    echoerr "You have to install curl or first install vim-plug yourself!"
    execute "q!"
  endif
  echo "Installing Vim-Plug..."
  echo ""
  silent !\curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  let g:not_finish_vimplug = "yes"

  autocmd VimEnter * PlugInstall
endif

call plug#begin(expand('~/.config/nvim/plugged'))

Plug 'mileszs/ack.vim'
Plug 'slashmili/alchemist.vim'
Plug 'cohama/agit.vim'
Plug 'w0rp/ale'
Plug 'vim-scripts/bufexplorer.zip'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Shougo/deoplete.nvim'
Plug 'tpope/vim-eunuch'
Plug 'morhetz/gruvbox'
Plug 'junegunn/goyo.vim'
Plug 'Yggdroot/indentLine'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'vim-scripts/mru.vim'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'scrooloose/nerdtree'
Plug 'roxma/nvim-yarp'
Plug 'amix/open_file_under_cursor.vim'
Plug 'danro/rename.vim'
Plug 'tomtom/tlib_vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'misterbuckley/vim-definitive'
Plug 'garbas/vim-snipmate'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tpope/vim-commentary'
Plug 'ryanoasis/vim-devicons'
Plug 'elixir-lang/vim-elixir'
Plug 'terryma/vim-expand-region'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tyru/open-browser.vim'
Plug 'tyru/open-browser-github.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'pbrisbin/vim-mkdir'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'thoughtbot/vim-rspec'
Plug 'sunaku/vim-ruby-minitest'
Plug 'slim-template/vim-slim'
Plug 'tpope/vim-surround'
Plug 'maxbrunsfeld/vim-yankstack'
Plug 'amix/vim-zenroom2'
Plug 'KabbAmine/zeavim.vim'
Plug 'KabbAmine/yowish.vim'

call plug#end()
