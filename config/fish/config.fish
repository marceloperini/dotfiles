if status is-interactive
    # Commands to run in interactive sessions can go here
end

export EDITOR="vim"
export USE_EDITOR=$EDITOR
export VISUAL=$EDITOR
export LESS="-R"
export TERMINAL="kitty"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source ~/.asdf/asdf.fish

export PATH="$HOME/.cargo/bin:$PATH"

export PATH="$HOME/.poetry/bin:$PATH"
