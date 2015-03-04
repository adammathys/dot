autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:git*' formats "%F{blue}%s%f:%F{cyan}%b%f(%u%c) "
zstyle ':vcs_info:*' actionformats "%F{blue}%s%f:%F{cyan}%b%f %F{red}(%a)%f(%u%c) "
zstyle ':vcs_info:*' stagedstr "%F{green}%f"
zstyle ':vcs_info:*' unstagedstr "%F{red}%f"
precmd() { vcs_info }

local current_dir="%F{gray}%~%f "
local user_prompt="%B%F{green}%#%f%b "
PROMPT='${current_dir}${vcs_info_msg_0_}${user_prompt}'

function zle-line-init zle-keymap-select {
  local vim_prompt="%K{cyan}%F{white}%B NORMAL %b%f%k"
  RPROMPT="${${KEYMAP/vicmd/${vim_prompt}}/(main|viins)/}"
  zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select

setopt promptsubst
