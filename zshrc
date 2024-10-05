# zplug
source /usr/local/opt/zplug/init.zsh
zplug 'mafredri/zsh-async', from:github
zplug 'sindresorhus/pure', use:pure.zsh, from:github, as:theme
zplug 'zsh-users/zsh-autosuggestions'
zplug 'zsh-users/zsh-syntax-highlighting', defer:2
zplug 'zsh-users/zsh-history-substring-search'
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

# autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh || echo "Failed to load the >> autojump <<"
## ensure_tmux_is_running

# vi mode
bindkey -v
KEYTIMEOUT=1

if zplug check zsh-users/zsh-history-substring-search; then
  bindkey '^[[A' history-substring-search-up
  bindkey '^[[B' history-substring-search-down
  bindkey -M vicmd 'k' history-substring-search-up
  bindkey -M vicmd 'j' history-substring-search-down
fi

# make color constants available, enable colored output from ls
autoload -U colors
colors
export CLICOLOR=1

# Python pipx
export PATH=$PATH:$HOME/.local/bin

# elixir iex history
export ERL_AFLAGS="-kernel shell_history enabled"

export EDITOR=/usr/local/bin/vim 
# alias
alias ll="ls -lGa"
alias e="nvim"

# test sign
# gpg tty setup 
export GPG_TTY=$(tty)

if [ -f ~/my_alias ]; then
  source ~/my_alias
fi

if [ -f ~/export_token ]; then
  source ~/export_token
fi
export PATH="/usr/local/opt/postgresql@15/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/postgresql@15/lib"
export CPPFLAGS="-I/usr/local/opt/postgresql@15/include"
export PKG_CONFIG_PATH="/usr/local/opt/postgresql@15/lib/pkgconfig"

export HOMEBREW_NO_AUTO_UPDATE=1

. /usr/local/opt/asdf/libexec/asdf.sh
