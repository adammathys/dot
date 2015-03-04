source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

autoload -U compinit
compinit -u

# Find using silver searcher
f(){ ag --nocolor -g "$1" "${2:-.}" }

# Aliases
alias l='ls -lh'
alias ll='ls -alh'
alias git=hub

# Export ALL of the things
HISTSIZE=100000
SAVEHIST=100000
HISTFILE=~/.histfile
NOKOGIRI_USE_SYSTEM_LIBRARIES=1
RUBY_GC_MALLOC_LIMIT=80000000
TERM='screen-256color'
REPORTTIME=10

source ~/.zsh/prompt.zsh

# No need to type `bundle exec` infront of everything
source /usr/local/share/bundler-exec/bundler-exec.sh
