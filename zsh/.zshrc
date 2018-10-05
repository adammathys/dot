source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

# Add my completions to fpath
fpath=('/Users/amueller/.zsh/completions' $fpath)
# Completions
autoload -U compinit
compinit -u
compctl -g '~/.teamocil/*(:t:r)' teamocil

# Allow [ or ] anywhere!
unsetopt nomatch

# Vim keybindings!
bindkey -v

# Find using ripgrep
f(){ rg -g "$1" --files "${2:-.}" }

# Find and replace using sed and silver!
replace(){ ag -l --nocolor "$1" "${3:-.}" | xargs sed -i -e "s/$1/$2/g" }

# Aliases
alias l='ls -lhG'
alias ll='l -a'
alias git=hub

# Export ALL of the things
HISTSIZE=100000
SAVEHIST=100000
HISTFILE=~/.histfile
NOKOGIRI_USE_SYSTEM_LIBRARIES=1
RUBY_GC_MALLOC_LIMIT=80000000
KEYTIMEOUT=1
REPORTTIME=10

# Lovely prompt
source ~/.zsh/prompt.zsh

# No need to type `bundle exec` infront of everything
source /usr/local/share/bundler-exec/bundler-exec.sh

# Source nvm. (--no-use is so that it's not super slow.)
# https://github.com/creationix/nvm/issues/539
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" --no-use

eval "$(direnv hook zsh)"
