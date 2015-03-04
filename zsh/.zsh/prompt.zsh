function parse_git_dirty {
  # Are we in a repo?
  [[ "$(command git rev-parse --is-inside-work-tree 2>/dev/null)" == "true" ]] || return
  # Check to see if it's dirty!
  command test -n "$(git status --porcelain --ignore-submodules ${umode})"
  (($? == 0)) && echo "%F{red}%f"
}

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e "/^[^*]/d" -e "s/* \(.*\)/\1$(parse_git_dirty)/"
}

function git_info {
  [[ "$(parse_git_branch)" != "" ]] || return
  echo "%F{blue}git%f:%F{cyan}$(parse_git_branch)%f "
}

local current_dir="%F{gray}%~%f "
local user_prompt="%B%F{green}%#%f%b "
PROMPT='${current_dir}$(git_info)${user_prompt}'

function zle-line-init zle-keymap-select {
  local vim_prompt="%K{cyan}%F{white}%B NORMAL %b%f%k"
  RPROMPT="${${KEYMAP/vicmd/${vim_prompt}}/(main|viins)/}"
  zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select

setopt promptsubst
