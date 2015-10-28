# aliases for Tmux
alias tmux='tmux -2'
alias ta='tmux attach -t'
alias tnew='tmux new -s'
alias tls='tmux ls'
alias tkill='tmux kill-session -t'

# convenience aliases for editing configs
alias ev='vim ~/.vimrc'
alias et='vim ~/.tmux.conf'
alias ez='vim ~/.zshrc'

# to use pgUp and pgDn in irssi
alias irssi='TERM=screen irssi'

alias laravel_environment_start='sudo service apache2 start && sudo service mysql start'
alias laravel_environment_stop='sudo service apache2 stop && sudo service mysql stop'
