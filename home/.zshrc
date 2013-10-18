#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Load chruby
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
alias ack='ack-grep'
alias l='ls -lh'
alias ll='ls -alh'
alias pgrep='ps aux | grep'

alias -g pry="pry -r ./config/environment -r rails/console/app -r rails/console/helpers"

alias rake="noglob rake" # allows square brackts for rake task invocation
alias brake='noglob bundle exec rake' # execute the bundled rake gem

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

eval "$(direnv hook zsh)"
