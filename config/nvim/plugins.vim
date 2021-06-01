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

" Languages
Plug 'ap/vim-css-color'
Plug 'cakebaker/scss-syntax.vim'
Plug 'elixir-editors/vim-elixir'
Plug 'leafgarland/typescript-vim'
Plug 'mxw/vim-jsx'
" Plug 'rust-lang/rust.vim'
Plug 'slim-template/vim-slim', { 'for': ['slim'] }
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'vim-ruby/vim-ruby'
Plug 'vim-test/vim-test'
Plug 'yuezk/vim-js'

" Utils
Plug 'cohama/agit.vim'
Plug 'w0rp/ale'
Plug 'stsewd/fzf-checkout.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-eunuch'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
" Plug 'Shougo/deoplete.nvim'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'godlygeek/tabular'
Plug 'mg979/vim-visual-multi'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'airblade/vim-gitgutter'
Plug 'tyru/open-browser.vim' " open-browser-github dependency
Plug 'tyru/open-browser-github.vim'
Plug 'pbrisbin/vim-mkdir'
Plug 'maxbrunsfeld/vim-yankstack'
Plug 'KabbAmine/zeavim.vim'
Plug 'roxma/vim-hug-neovim-rpc' " Deoplete dependency
Plug 'roxma/nvim-yarp' " Deoplete dependency
Plug 'Yggdroot/indentLine'
" Plug 'ludovicchabant/vim-gutentags'
Plug 'editorconfig/editorconfig-vim'

" LSP
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Colorscheme
Plug 'morhetz/gruvbox'

" Plug 'vim-scripts/bufexplorer.zip'
" Plug 'vim-scripts/mru.vim'
" Plug 'amix/open_file_under_cursor.vim'
" Plug 'danro/rename.vim'
" Plug 'tomtom/tlib_vim' " vim-snipmate dependency
" Plug 'misterbuckley/vim-definitive'
" Plug 'garbas/vim-snipmate'
" Plug 'MarcWeber/vim-addon-mw-utils'
" Plug 'terryma/vim-expand-region'

call plug#end()
