source /opt/homebrew/share/chruby/chruby.sh
source /opt/homebrew/share/chruby/auto.sh

export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'

if [[ -z "$LANG" ]]; then
  export LANG='en_US.UTF-8'
fi

typeset -gU cdpath fpath mailpath path

path=(
  $HOME/.bin
  $HOME/go/bin
  $HOME/.local/bin
  /opt/homebrew/{bin,sbin}
  /usr/local/{bin,sbin}
  /usr/{bin,sbin}
  /{bin,sbin}
  $path
)

source /usr/local/share/bundler-exec/bundler-exec.sh
