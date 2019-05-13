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
Plug 'junegunn/goyo.vim'
Plug 'Yggdroot/indentLine'
Plug 'itchyny/lightline.vim'
Plug 'vim-scripts/mru.vim'
Plug 'scrooloose/nerdtree'
Plug 'roxma/nvim-yarp'
Plug 'amix/open_file_under_cursor.vim'
Plug 'danro/rename.vim'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tpope/vim-commentary'
Plug 'elixir-lang/vim-elixir'
Plug 'terryma/vim-expand-region'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'michaeljsmith/vim-indent-object'
Plug 'tpope/vim-markdown'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'thoughtbot/vim-rspec'
Plug 'slim-template/vim-slim'
Plug 'tpope/vim-surround'
"Plug 'wakatime/vim-wakatime'
Plug 'maxbrunsfeld/vim-yankstack'
Plug 'amix/vim-zenroom2'
Plug 'KabbAmine/zeavim.vim'
Plug 'KabbAmine/yowish.vim'

call plug#end()
