# References
# - https://github.com/seebi/zshrc/blob/master/environment.zsh

export PATH="$HOME/bin:$PATH";

# XDG Base Directory Specification
# http://standards.freedesktop.org/basedir-spec/basedir-spec-latest.html
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export ZSH_CONFIG="$XDG_CONFIG_HOME/zsh"
export ZSH_CACHE="$XDG_CACHE_HOME/zsh"
mkdir -p $ZSH_CACHE

# executable search path
export PATH=/usr/local/sbin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.local/sbin:$PATH

# Postgres instructions including 'psql'
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"

# Explicit load env for TMUX
if [ -f ".env" ]; then
  source .env
fi

# autoenv
source /usr/local/opt/autoenv/activate.sh

# For tmux
if [[ $TERM == xterm ]]; then TERM=xterm-256color; fi
