source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

alias rspec-fast='rspec -O ~/.rspec-fast'
alias rspec-slow='rspec -O ~/.rspec-slow'

export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'

if [[ -z "$LANG" ]]; then
  export LANG='en_US.UTF-8'
fi

typeset -gU cdpath fpath mailpath path

path=(
  $HOME/.bin
  /usr/local/{bin,sbin}
  /usr/{bin,sbin}
  /{bin,sbin}
  $path
)

source /usr/local/share/bundler-exec/bundler-exec.sh
