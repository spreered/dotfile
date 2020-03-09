# zplug
source /usr/local/opt/zplug/init.zsh
zplug 'mafredri/zsh-async'
zplug 'sindresorhus/pure'
zplug 'zsh-users/zsh-syntax-highlighting'
zplug 'zsh-users/zsh-history-substring-search'
zplug 'zsh-users/zsh-completions'
zplug 'zsh-users/zsh-autosuggestions'
if ! zplug check --verbose; then
   printf "Install? [y/N]: "
   if read -q; then
       echo; zplug install
   else
       echo
   fi
fi
zplug load

for zsh_source in $HOME/.zsh/configs/*.zsh; do
  source $zsh_source
done

# pure prompt
PURE_PROMPT_SYMBOL="🐵 ❯"
PURE_PROMPT_VICMD_SYMBOL="🙈 ❮"

# autosugesstion

if zplug check zsh-users/zsh-autosuggestions; then
 ZSH_AUTOSUGGEST_CLEAR_WIDGETS+=(history-substring-search-up history-substring-search-down)
 ZSH_AUTOSUGGEST_CLEAR_WIDGETS=("${(@)ZSH_AUTOSUGGEST_CLEAR_WIDGETS:#(up|down)-line-or-history}")
fi


KEYTIMEOUT=1
bindkey -v

# history substring
if zplug check zsh-users/zsh-history-substring-search; then
  bindkey '^[[A' history-substring-search-up
  bindkey '^[[B' history-substring-search-down
fi

# autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh || echo "Failed to load the >> autojump <<"
## ensure_tmux_is_running

# . /usr/local/etc/bash_completion.d

# [ -f ~/.client-config.zsh ] && source ~/.client-config.zsh
# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# rbenv
eval "$(rbenv init -)"

# asdf
. /usr/local/opt/asdf/asdf.sh


# alias
alias ll="ls -lGa"
