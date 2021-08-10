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

" General
Plug 'rhysd/git-messenger.vim'                      " Reveal the commit messages under the cursor | https://github.com/rhysd/git-messenger.vim
Plug 'cohama/agit.vim'                              " Git commits visualizations                  | https://github.com/cohama/agit.vim
Plug 'dense-analysis/ale'                           " Asynchronous Lint Engine                    | https://github.com/dense-analysis/ale
Plug 'stsewd/fzf-checkout.vim'                      " Manage branches and tags with fzf           | https://github.com/stsewd/fzf-checkout.vim
Plug 'tpope/vim-fugitive'                           " Tim Pope's Git wrapper                      | https://github.com/tpope/vim-fugitive
Plug 'tpope/vim-surround'                           " Quoting/parenthesizing made simple          | https://github.com/tpope/vim-surround
Plug 'tpope/vim-endwise'                            " Close structures automatically              | https://github.com/tpope/vim-endwise
Plug 'tpope/vim-eunuch'                             " UNIX commands on Vim                        | https://github.com/tpope/vim-eunuch
Plug 'junegunn/fzf.vim'                             " FZF for Vim                                 | https://github.com/junegunn/fzf.vim
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " A command-line fuzzy finder                 | https://github.com/junegunn/fzf
Plug 'ryanoasis/vim-devicons'                       " Adds file type icons to Vim                 | https://github.com/ryanoasis/vim-devicons
Plug 'preservim/nerdtree'                           " A tree explorer plugin for vim              | https://github.com/preservim/nerdtree
Plug 'preservim/nerdcommenter'                      " Comment functions                           | https://github.com/preservim/nerdcommenter
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'godlygeek/tabular'
Plug 'mg979/vim-visual-multi', {'branch': 'master'} " Multiple cursors plugin for vim/neovim      | https://github.com/mg979/vim-visual-multi
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
Plug 'editorconfig/editorconfig-vim'

" Languages
Plug 'ap/vim-css-color'
Plug 'cakebaker/scss-syntax.vim'
Plug 'elixir-editors/vim-elixir'
Plug 'yuezk/vim-js'
Plug 'MaxMEllon/vim-jsx-pretty'
" Plug 'rust-lang/rust.vim'
Plug 'slim-template/vim-slim', { 'for': ['slim'] }
Plug 'tpope/vim-rails'                  " Ruby on Rails power tools                   | https://github.com/tpope/vim-rails
Plug 'tpope/vim-rake'
Plug 'vim-ruby/vim-ruby'
Plug 'vim-test/vim-test' " Run your tests at the speed of thought | https://github.com/janko/vim-test
Plug 'yuezk/vim-js'

" LSP
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Colorscheme
Plug 'morhetz/gruvbox'

call plug#end()
