return {
  -- Performance
  require("plugins.filetype"),

  -- Theme
  require("plugins.catppuccin"),
  require("plugins.lualine"),

  -- Pretty quickfix
  require("plugins.quickfix"),

  -- Camel-case Motion
  require("plugins.spider"),

  -- Text Manipulation
  require("plugins.surround"),

  -- Tmux Navigation
  require("plugins.tmux_navigation"),

  -- Fuzzy Finding
  require("plugins.telescope"),

  -- Tree-sitter syntax/indent
  require("plugins.treesitter"),

  -- GitHub Copilot
  require("plugins.copilot"),

  -- Key-bindings for merge conflicts
  require("plugins.git_conflict"),
}
