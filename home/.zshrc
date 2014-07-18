# Load chruby
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Aliases
alias l='ls -lh'
alias ll='ls -alh'
alias git='hub'
compdef hub=git

# As of nokogiri 1.6, it will compile its own version of libxml2 and libxslt.
# While this is convenient, it is slower, and uses about 100MB for each
# install. For a development machine (many gemsets, bundle install often) this
# is a better default.
export NOKOGIRI_USE_SYSTEM_LIBRARIES=1

# Don't garbage collect as often. Sacrifice some ram.
export RUBY_GC_MALLOC_LIMIT=80000000

# 256 colors!
export TERM='screen-256color'

# No need to type `bundle exec` infront of everything
source /usr/local/share/bundler-exec/bundler-exec.sh
