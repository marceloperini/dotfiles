let vimplug_exists=expand('~/.config/nvim/autoload/plug.vim')

"" Include plugins
if filereadable(expand("~/.config/nvim/plugins.vim"))
  source ~/.config/nvim/plugins.vim
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set clipboard yank
set clipboard=unnamedplus

" TextEdit might fail if hidden is not set.
set hidden

" Sets how many lines of history VIM has to remember
set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" Set leader key
let mapleader=','

" Fast saving
nmap <leader>w :w!<cr>

" :W sudo saves the file
" (useful for hadling the permission-denied error)
command W w !sudo tee % > /dev/null

set clipboard=unnamed

set timeoutlen=1000

set ttimeoutlen=0

set tags=./tags,c:/ruby/lib/tags

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Avoid garbled characters in Chinese language windows OS
let $LANG='en'
set langmenu=en
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" Turn on the Wild menu
set wildmenu

set ttyfast

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set wildignore+=*_build/*
set wildignore+=*/coverage/*
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

"Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

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

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500
set completeopt-=preview

" Properly disable sound on errors on MacVim
if has("gui_macvim")
    autocmd GUIEnter * set vb t_vb=
endif

" Display caracteres for final line
set list
set showbreak=↪\
set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨

if exists('$TMUX')
    if has('nvim')
        set termguicolors
    else
        set term=screen-256color
    endif
endif

" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
 "\ pumvisible() ? "\<C-n>" :
 "\ neosnippet#expandable_or_jumpable() ?
 "\    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
 "smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
 "\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

let g:snipMate = { 'snippet_version' : 1 }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable syntax highlighting
syntax enable

set t_Co=256

set background=dark

let g:gruvbox_italic=1
colorscheme gruvbox

let g:airline_powerline_fonts = 1
let g:airline_theme = 'base16_eighties'
if !exists('g:airline_symbols') | let g:airline_symbols = {} | endif
let g:airline_section_z = airline#section#create(['%l:%c %L'])
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline#extensions#hunks#enabled = 0
let g:airline#extensions#ale#enabled = 1

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set guioptions-=m
    set guioptions-=r
    set guioptions-=R
    set guioptions-=l
    set guioptions-=L
    set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

set cursorline colorcolumn=80
set cursorline!
set relativenumber

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowritebackup
set nowb
set noswapfile

set undofile
set undodir="$HOME/.VIM_UNDO_FILES"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2
set softtabstop=2

" Linebreak on 500 characters
set lbr
set tw=500

set ai " Auto indent
set si " Smart indent
set nowrap " No Wrap lines

" set number numberwidth=3
set nu
" set relativenumber

set mouse=a

set splitbelow
set splitright

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Moving around, tabs, widnows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Specify the behavior when switching between buffers
set switchbuf=useopen,usetab,newtab
set stal=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Status line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Always show the status line
set laststatus=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Delete trailing white space on save, useful for some filetypes ;)
fun! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun

if has("autocmd")
  autocmd BufWritePre *.txt,*.js,*.py,*.wiki,*.sh,*.coffee :call CleanExtraSpaces()
endif

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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ack searching and scope displaying
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if executable('ag')
  let g:ackprg = 'ag --vimgrep --smart-case'
endif

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

inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ deoplete#mappings#manual_complete()
function! s:check_back_space() abort "{{{
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction"}}}

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

" Open file under cursor in another tab
map gft <C-w>gf<CR>

let g:vim_jsx_pretty_highlight_close_tag = 1

"" Include FZF configurations
if filereadable(expand("~/.config/nvim/fzf.vim"))
  source ~/.config/nvim/fzf.vim
endif

"" Include Markdown Preview configurations
if filereadable(expand("~/.config/nvim/markdown-preview.vim"))
  source ~/.config/nvim/markdown-preview.vim
endif


"" Include COC configurations
if filereadable(expand("~/.config/nvim/coc.vim"))
  source ~/.config/nvim/coc.vim
endif

"" Include Key maps
if filereadable(expand("~/.config/nvim/maps.vim"))
  source ~/.config/nvim/maps.vim
endif
