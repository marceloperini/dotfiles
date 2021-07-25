" Type CTRL+p to open FZF window and search files
nnoremap <silent> <C-d> :Files<CR>
nnoremap <silent> <C-f> :Ag<CR>

" Enable per-command history
" - History files will be stored in the specified directory
" - When set, CTRL-N and CTRL-P will be bound to 'next-history' and
"   'previous-history' instead of 'down' and 'up'.
let g:fzf_history_dir = '~/.local/share/fzf-history'
let g:fzf_layout = { 'down': '30%' }
