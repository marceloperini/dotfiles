# Gotop with perfect theme
alias gtop='gotop --color=monokai'

# convenience aliases for editing configs
alias ev='vim ~/.vimrc'
alias et='vim ~/.tmux.conf'
alias ez='vim ~/.zshrc'

# update source zshrc
alias sz='source ~/.zshrc'

# TMUX alias
alias tmux='tmux -2'
alias ta='tmux attach -t'
alias tnew='tmux new -s'
alias tls='tmux ls'
alias tkill='tmux kill-session -t'

# postgres alias
alias postgres_start='sudo service postgresql start'
alias postgres_stop='sudo service postgresql stop'

# ruby alias
alias be='bundle exec'
alias rspec='be rspec'
alias rails='be rails'
alias rake='be rake'

# git alias
alias gstatus='git status'
alias gall='git add --all'
alias gm='git commit -m'
alias gcheckout='git checkout'
alias gpull='git pull origin'
alias gpush='git push origin'
alias gfetch='git fetch origin'
alias gtree='git log --graph --pretty=oneline --abbrev-commit'
