set nocompatible

filetype plugin indent on

let vimplug_exists=expand('~/.config/nvim/autoload/plug.vim')

"" Include plugins
if filereadable(expand("~/.config/nvim/plugins.vim"))
  source ~/.config/nvim/plugins.vim
endif

if has("gui_running")
  set guioptions-=m
  set guioptions-=T
  set guifont=Inconsolata:h14
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Set leader key
let mapleader=','

set backspace=indent,eol,start
set autoindent		" always set autoindenting on
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
set relativenumber
set ai                  " Auto indent
set si                  " Smart indent
set nowrap              " No Wrap lines
set stal=2
set splitbelow
set splitright
set wildmode=list:full
set suffixesadd=.rb     " find ruby files
set path+=lib/**,test/**,app/** " look in lib and test

" Set clipboard yank
set clipboard=unnamedplus

" Expand tabs, but set shiftwidth and softtabstop to 2.  This allows vim
" to mix tabs and spaces in Ruby C code, but it looks correct
set expandtab
set shiftwidth=2
set softtabstop=2

set kp=ri " Use ri for help

set exrc
set secure
set colorcolumn=81

set backupdir=/tmp

set tags+=.git/tags
set scrolloff=2
set ruler
set laststatus=2
set spell spelllang=en_us

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowritebackup
set nowb
set noswapfile

set undofile
set undodir="$HOME/.VIM_UNDO_FILES"

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

if exists('$TMUX')
  if has('nvim')
    set termguicolors
  else
    set term=screen-256color
  endif
endif

" Add stdlib of environment's ruby to path
let g:stdlib = system('ruby --disable-gems -rrbconfig -e"print RbConfig::CONFIG[\"rubylibdir\"]"')
let &path .= "," . stdlib
let g:ruby_path = &path

map <Leader>rt :!ctags --tag-relative=yes --extras=+f -Rf.git/tags --languages=-javascript,sql .<cr><cr>

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

syntax on
set t_Co=256
set cursorline
colorscheme gruvbox
set background=dark
let g:airline_theme='gruvbox'

" let g:airline_theme='light'
let g:airline#extensions#whitespace#enabled = 0
if !exists('g:airline_symbols') | let g:airline_symbols = {} | endif
let g:airline_section_z = airline#section#create(['%l:%c %L'])
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline#extensions#hunks#enabled = 0
let g:airline#extensions#ale#enabled = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" open tag of the word under the cursor, requires to run "ctargs -R ." before
command! JumpToTag execute ':tag ' . expand("<cword>")

command! JumpToTagOnVsplit :vsplit
      \| execute ':tag ' . expand("<cword>")

command! JumpToTagOnSplit :split
      \| execute ':tag ' . expand("<cword>")

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! PathFileName ()
  return expand('%:p:h')
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git gutter (Git diff)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gitgutter_enabled=1

nmap ghp <Plug>(GitGutterPreviewHunk)
nmap ghs <Plug>(GitGutterStageHunk)
nmap ghu <Plug>(GitGutterUndoHunk)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntastic (syntax checker)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_cache_executable_check_failures = 1
let g:ale_virtualenv_dir_names = []
let g:ale_disable_lsp = 1

" Disabling highlighting
let g:ale_set_highlights = 1

" Only run linting when saving the file
" let g:ale_lint_on_text_changed = 'never'
" let g:ale_lint_on_enter = 0

let g:ale_linters = {
      \   'ruby': ['standardrb'],
      \   'javascript': ['eslint'],
      \}

nmap <silent> <leader>a <Plug>(ale_next_wrap)
let g:neosnippet#snippets_directory=$HOME.'/.config/nvim/snippets'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Misc.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:deoplete#enable_at_startup = 1

"inoremap <silent><expr> <TAB>
    "\ pumvisible() ? "\<C-n>" :
    "\ <SID>check_back_space() ? "\<TAB>" :
    "\ deoplete#mappings#manual_complete()
"function! s:check_back_space() abort "{{{
    "let col = col('.') - 1
    "return !col || getline('.')[col - 1]  =~ '\s'
"endfunction"}}}

" NERDTree
let NERDTreeWinPos="left"
let NERDTreeHighlightCursorline=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1

" If possible open a NERDTreeMirror
function! OpenNERDTreeMirror()
  try
    :NERDTreeToggle | NERDTreeMirror
  catch /^Vim\%((\a\+)\)\=:E121/
    :NERDTree
  catch
    redraw
  endtry
endfunction

noremap <silent> <C-\> :call OpenNERDTreeMirror()<CR>
nnoremap <silent> <leader>fl :NERDTreeFind<CR>
command! E exec ":NERDTree ".expand('%:p')

let g:vim_jsx_pretty_highlight_close_tag = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FZF.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Type CTRL+p to open FZF window and search files
nnoremap <silent> <C-d> :Files<CR>
nnoremap <silent> <C-f> :Ag<CR>

" Enable per-command history
" - History files will be stored in the specified directory
" - When set, CTRL-N and CTRL-P will be bound to 'next-history' and
"   'previous-history' instead of 'down' and 'up'.
let g:fzf_history_dir = '~/.local/share/fzf-history'
let g:fzf_layout = { 'down': '30%' }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Markdown.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" default: ''
let g:mkdp_browser = ''

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {}
    \ }

" use a custom markdown style must be absolute path
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
let g:mkdp_highlight_css = ''

" use a custom port to start server or random for empty
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maps.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:keep_trailing_spaces = 0
command! -nargs=? KeepTrailingSpaces
      \ if <q-args> == "" |
      \   let g:keep_trailing_spaces = 1 |
      \ else |
      \   let g:keep_trailing_spaces = str2nr(<q-args>) |
      \ endif

aug remove_trailing_spaces
  au!
  au BufWritePre *
        \ if ! g:keep_trailing_spaces |
        \   call Preserve('%s/\s\+$//e') |
        " \   call Preserve('%s/\v($\n\s*)+%$//e') |
        \ endif
aug END

" Executes a command and keeps the current view
function! Preserve(command)
  setlocal lazyredraw
  let last_search=@/

  let last_view = winsaveview()
  silent execute a:command
  call winrestview(last_view)

  let @/=last_search
  redraw
  setlocal nolazyredraw
endfunction

" Executes a global function and keeps the current view
function! PreserveFN(fn, ...)
  if a:0
    let args = "(".join(a:000, ",").")"
  else
    let args = "()"
  end
  let func = string(function(a:fn))

  call Preserve("let g:preservedReturn =
  ".func.args)

  return g:preservedReturn
endfunction

noremap <C-S> :w!<CR>
noremap <C-E> :q!<CR>

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Make Y like D
nnoremap Y y$

" Make <C-l> clear the highlight
nnoremap <silent> <C-l> :nohls<CR>

" Indent all file
noremap <silent> <leader>ff :call Preserve('normal gg=G')<CR>

" Quicksave command
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>

" Quick quit command
noremap <Leader>e :quit<CR> " Quit current window
noremap <Leader>we :wq<CR>  " Write and quite current window
noremap <Leader>E :qa!<CR>  " Quit all windows
noremap <Leader>wE :wq!<CR> " Write and quit all windows
noremap <Leader>gs :Git<CR> " Open Git status

" Easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" Create new tab
map <Leader>t <esc>:tabnew<CR>

" Divide tab
map <Leader>d <esc>:new<CR>
map <Leader>v <esc>:vnew<CR>

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Map sort function to a key
vnoremap <Leader>s :sort<CR>

" Easier moving of code blocks
vnoremap < <gv " better indentation
vnoremap > >gv " better indentation

" Remap VIM 0 to first non-blank character
map 0 ^

" Move a line of text using ALT+[jk] or Command+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
  nmap <D-j> <M-j>
  nmap <D-k> <M-k>
  vmap <D-j> <M-j>
  vmap <D-k> <M-k>
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim-test
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" these "Ctrl mappings" work well when Caps Lock is mapped to Ctrl
map <Leader>r :TestFile<CR>
map <Leader>s :TestNearest<CR>
map <Leader>a :TestSuite<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Visual mode related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

noremap <silent> <leader>go :JumpToTag<CR>
noremap <silent> <leader>gov :JumpToTagOnVsplit<CR>
noremap <silent> <leader>gos :JumpToTagOnSplit<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=
