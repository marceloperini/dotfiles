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

# update source zshrc
alias sz='source ~/.zshrc'

# to use pgUp and pgDn in irssi
alias irssi='TERM=screen irssi'

alias rake='noglob rake'

# postgres alias
alias postgres_start='sudo service postgresql start'
alias postgres_stop='sudo service postgresql stop'

# git alias
alias add_all='git add --all'
alias commit='git commit -m'
alias checkout_master='git checkout master'
alias checkout_develop='git checkout develop'
alias pull_master='git pull origin master'
alias pull_develop='git pull origin develop'
alias push_master='git push origin master'
alias push_develop='git push origin develop'
alias fetch_origin='git fetch origin'
alias gittree='git log --graph --pretty=oneline --abbrev-commit'
