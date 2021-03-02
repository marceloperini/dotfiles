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
if has("patch-8.1.1564")
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
imap <expr><TAB>
 \ pumvisible() ? "\<C-n>" :
 \ neosnippet#expandable_or_jumpable() ?
 \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
 smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
 \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

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

" set copyindent cindent smartindent

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Visual mode related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Moving around, tabs, widnows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

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
noremap <Leader>E :qa!<CR>  " Quit all windows

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

" Specify the behavior when switching between buffers
set switchbuf=useopen,usetab,newtab
set stal=2

" Map sort function to a key
vnoremap <Leader>s :sort<CR>

" Easier moving of code blocks
vnoremap < <gv " better indentation
vnoremap > >gv " better indentation

" RSpec.vim mappings
map <Leader>r :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Status line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Always show the status line
set laststatus=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

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

noremap <silent> <leader>go :JumpToTag<CR>
noremap <silent> <leader>gov :JumpToTagOnVsplit<CR>
noremap <silent> <leader>gos :JumpToTagOnSplit<CR>

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
" Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ack searching and scope displaying
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if executable('ag')
  let g:ackprg = 'ag --vimgrep --smart-case'
endif

" When you press gv you Ack after the selected text
vnoremap <silent> gv :call VisualSelection('gv', '')<CR>

" Open Ack and put the cursor in the right position
map <leader>g :Ack

" When you press <leader>r you can search and replace the selected text
vnoremap <silent> <leader>r :call VisualSelection('replace', '')<CR>

" Do :help cope if you are unsure what cope is. It's super useful!
"
" When you search with Ack, display your results in cope by doing:
"   <leader>cc
"
" To go to the next search result do:
"   <leader>n
"
" To go to the previous search results do:
"   <leader>p
"
map <leader>cc :botright cope<cr>
map <leader>co ggVGy:tabnew<cr>:set syntax=qf<cr>pgg
map <leader>p :cp<cr>

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

" Disabling highlighting
let g:ale_set_highlights = 0

" Only run linting when saving the file
" let g:ale_lint_on_text_changed = 'never'
" let g:ale_lint_on_enter = 0

nmap <silent> <leader>a <Plug>(ale_next_wrap)
let g:neosnippet#snippets_directory=$HOME.'/.config/nvim/snippets'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Misc.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:deoplete#enable_at_startup = 1

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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FZF
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Type CTRL+p to open FZF window and search files
nnoremap <silent> <C-d> :Files<CR>
nnoremap <silent> <C-f> :Ag<CR>

" Enable per-command history
" - History files will be stored in the specified directory
" - When set, CTRL-N and CTRL-P will be bound to 'next-history' and
"   'previous-history' instead of 'down' and 'up'.
let g:fzf_history_dir = '~/.local/share/fzf-history'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" COC
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

 "" Use tab for trigger completion with characters ahead and navigate.
 "" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
 "" other plugin before putting this into your config.
 "inoremap <silent><expr> <TAB>
       "\ pumvisible() ? "\<C-n>" :
       "\ <SID>check_back_space() ? "\<TAB>" :
       "\ coc#refresh()
 "inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

 "function! s:check_back_space() abort
   "let col = col('.') - 1
   "return !col || getline('.')[col - 1]  =~# '\s'
 "endfunction

 "" Use <c-space> to trigger completion.
 "if has('nvim')
   "inoremap <silent><expr> <c-space> coc#refresh()
 "else
   "inoremap <silent><expr> <c-@> coc#refresh()
 "endif

 "" Make <CR> auto-select the first completion item and notify coc.nvim to
 "" format on enter, <cr> could be remapped by other vim plugin
 "inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                               "\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

 "" Use `[g` and `]g` to navigate diagnostics
 "" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
 "nmap <silent> [g <Plug>(coc-diagnostic-prev)
 "nmap <silent> ]g <Plug>(coc-diagnostic-next)

 "" GoTo code navigation.
 "nmap <silent> gd <Plug>(coc-definition)
 "nmap <silent> gy <Plug>(coc-type-definition)
 "nmap <silent> gi <Plug>(coc-implementation)
 "nmap <silent> gr <Plug>(coc-references)

 "" Use K to show documentation in preview window.
 "nnoremap <silent> K :call <SID>show_documentation()<CR>

 "function! s:show_documentation()
   "if (index(['vim','help'], &filetype) >= 0)
     "execute 'h '.expand('<cword>')
   "elseif (coc#rpc#ready())
     "call CocActionAsync('doHover')
   "else
     "execute '!' . &keywordprg . " " . expand('<cword>')
   "endif
 "endfunction

 "" Highlight the symbol and its references when holding the cursor.
 "autocmd CursorHold * silent call CocActionAsync('highlight')

 "" Symbol renaming.
 "nmap <leader>rn <Plug>(coc-rename)

 "" Formatting selected code.
 "xmap <leader>f  <Plug>(coc-format-selected)
 "nmap <leader>f  <Plug>(coc-format-selected)

 "augroup mygroup
   "autocmd!
   "" Setup formatexpr specified filetype(s).
   "autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
   "" Update signature help on jump placeholder.
   "autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
 "augroup end

 "" Applying codeAction to the selected region.
 "" Example: `<leader>aap` for current paragraph
 "xmap <leader>a  <Plug>(coc-codeaction-selected)
 "nmap <leader>a  <Plug>(coc-codeaction-selected)

 "" Remap keys for applying codeAction to the current buffer.
 "nmap <leader>ac  <Plug>(coc-codeaction)
 "" Apply AutoFix to problem on the current line.
 "nmap <leader>qf  <Plug>(coc-fix-current)

 "" Map function and class text objects
 "" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
 "xmap if <Plug>(coc-funcobj-i)
 "omap if <Plug>(coc-funcobj-i)
 "xmap af <Plug>(coc-funcobj-a)
 "omap af <Plug>(coc-funcobj-a)
 "xmap ic <Plug>(coc-classobj-i)
 "omap ic <Plug>(coc-classobj-i)
 "xmap ac <Plug>(coc-classobj-a)
 "omap ac <Plug>(coc-classobj-a)

 "" Remap <C-f> and <C-b> for scroll float windows/popups.
 ""if has('nvim-0.4.0') || has('patch-8.2.0750')
   ""nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
   ""nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
   ""inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
   ""inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
   ""vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
   ""vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
 ""endif

 "" Use CTRL-S for selections ranges.
 "" Requires 'textDocument/selectionRange' support of language server.
 "nmap <silent> <C-s> <Plug>(coc-range-select)
 "xmap <silent> <C-s> <Plug>(coc-range-select)

 "" Add `:Format` command to format current buffer.
 "command! -nargs=0 Format :call CocAction('format')

 "" Add `:Fold` command to fold current buffer.
 "command! -nargs=? Fold :call     CocAction('fold', <f-args>)

 "" Add `:OR` command for organize imports of the current buffer.
 "command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

 "" Add (Neo)Vim's native statusline support.
 "" NOTE: Please see `:h coc-status` for integrations with external plugins that
 "" provide custom statusline: lightline.vim, vim-airline.
 "set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

 "" Mappings for CoCList
 "" Show all diagnostics.
 "nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
 "" Manage extensions.
 "nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
 "" Show commands.
 "nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
 "" Find symbol of current document.
 "nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
 "" Search workspace symbols.
 "nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
 "" Do default action for next item.
 "nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
 "" Do default action for previous item.
 "nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
 "" Resume latest coc list.
 "nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Markdown preview config.
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
