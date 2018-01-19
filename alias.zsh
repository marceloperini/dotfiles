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

alias rake='noglob rake'

alias postgres_start='sudo service postgresql start'
alias postgres_stop='sudo service postgresql stop'

alias pull_master='git pull origin master'
alias pull_develop='git pull origin develop'
alias push_master='git push origin master'
alias push_develop='git push origin develop'
alias fetch_origin='git fetch origin'
