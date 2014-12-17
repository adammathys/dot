source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

alias rspec-fast='rspec -O ~/.rspec-fast'
alias rspec-slow='rspec -O ~/.rspec-slow'

if [[ "$OSTYPE" == darwin* ]]; then
  export BROWSER='open'
fi

export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'

if [[ -z "$LANG" ]]; then
  eval "$(locale)"
fi

# Less config
export LESS='-F -g -i -M -R -S -w -X -z-4'
if (( $+commands[lesspipe.sh] )); then
  export LESSOPEN='| /usr/bin/env lesspipe.sh %s 2>&-'
fi

typeset -gU cdpath fpath mailpath manpath path
typeset -gUT INFOPATH infopath

infopath=(
  /usr/local/share/info
  /usr/share/info
  $infopath
)
manpath=(
  /usr/local/share/man
  /usr/share/man
  $manpath
)
for path_file in /etc/manpaths.d/*(.N); do
  manpath+=($(<$path_file))
done
unset path_file
path=(
  ~/.bin
  /usr/local/{bin,sbin}
  /usr/{bin,sbin}
  /{bin,sbin}
  $path
)
for path_file in /etc/paths.d/*(.N); do
  path+=($(<$path_file))
done
unset path_file

if [[ -d "$TMPDIR" ]]; then
  export TMPPREFIX="${TMPDIR%/}/zsh"
  if [[ ! -d "$TMPPREFIX" ]]; then
    mkdir -p "$TMPPREFIX"
  fi
fi

# No need to type `bundle exec` infront of everything
source /usr/local/share/bundler-exec/bundler-exec.sh
