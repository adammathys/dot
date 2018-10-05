source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

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
  /usr/local/{bin,sbin}
  /usr/{bin,sbin}
  /{bin,sbin}
  $path
)

source /usr/local/share/bundler-exec/bundler-exec.sh

export PATH="$HOME/.cargo/bin:$PATH"
