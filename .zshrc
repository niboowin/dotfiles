eval "$(starship init zsh)"

setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS

function load_python_env() {
    if [ -d "venv" ]; then
        . venv/bin/activate
    fi
    if [ -f ".env.local" ] ; then
        echo "loading .env.local"
        export $(cat .env.local | xargs)
    fi
}

alias myip='curl https://checkip.amazonaws.com'
alias pyclean="find . -type f -name '*.py[co]' -delete -o -type d -name __pycache__ -delete"
alias rmcrap='find . -name ".DS_Store" -type f -delete'
alias ..='cd ..'
alias l='ls -lah'
alias la='ls -lAh'
alias ll='ls -lh'
alias ls='ls -G'
alias vv='load_python_env'
