# fpath=(~/.zsh/completion $fpath)
fpath=(/usr/local/share/zsh/site-functions $fpath)
autoload -U compinit
compinit

# case-insensitive (all), partial-word and then substring completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' \
    'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' menu yes select
