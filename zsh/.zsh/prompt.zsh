function parse_git_dirty {
  # Are we in a repo?
  [[ "$(command git rev-parse --is-inside-work-tree 2>/dev/null)" == "true" ]] || return
  # Check to see if it's dirty!
  [[ "$PURE_GIT_UNTRACKED_DIRTY" == 0 ]] && local umode="-uno" || local umode="-unormal"

  command test -n "$(git status --porcelain --ignore-submodules ${umode})"
  (($? == 0)) && print -Pn "%B%F{red}!%f%b"
}

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e "/^[^*]/d" -e "s/* \(.*\)/\1$(parse_git_dirty)/"
}

function git_info {
  [[ "$(parse_git_branch)" != "" ]] || return
  print -Pn "%F{blue}git:%f$(parse_git_branch) "
}

local current_dir="%F{cyan}%~%f "
local user_prompt="%B%F{magenta}❯❯%f%b "

PROMPT='${current_dir}$(git_info)${user_prompt}'

setopt promptsubst
