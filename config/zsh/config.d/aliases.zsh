# navigation 
alias sites="cd ~/Sites"

alias ls="eza --long"
alias ll="eza --long -all"

alias h="history"
alias hg="history -1000 | grep -i"

# Apps
alias n="nvim"
alias v="nvim"
alias vim="nvim"

alias b="brew"
alias bi="brew install"
alias bic="brew install --cask"

alias bs="brew services"
alias bsl="brew services list"
alias bst="brew services start"
alias bsr="brew services restart"
alias bsp="brew services stop"

alias d="docker"
alias dp="docker ps"

alias dc="docker-compose"
alias dcp="docker-compose pull"
alias dcu="docker-compose up -d"
alias dcs="docker-compose stop"
alias dcd="docker-compose down"

alias t="tmux"
alias tn="tmux new -s"
alias tl="tmux list-sessions"
alias ta="tmux attach -t"
alias trc="tmux source-file ~/.tmux.conf"
alias tsc="tmux source-file ~/.tmux.conf"

alias nm_rebuild="rm -rf node_modules/ && rm package-lock.json && npm install"
alias friday="ssh office.thelazyperson.org -p 55022 -t tmux attach-session"

# open ~/.zshrc in using the default editor specified in $EDITOR
alias ec="$EDITOR $HOME/.zshrc"

# source ~/.zshrc
alias sc="source $HOME/.zshrc"
alias rc="source $HOME/.zshrc"
