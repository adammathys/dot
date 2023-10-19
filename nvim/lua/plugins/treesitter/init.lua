return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local treesitter = require("nvim-treesitter.configs")
    treesitter.setup({
      ensure_installed = {
        "css",
        "html",
        "javascript",
        "json",
        "lua",
        "ruby",
        "scss",
        "tsx",
        "typescript",
        "yaml",
      },
      highlight = {
        enable = true,
      },
      indent = {
        enable = true
      },
    })
  end,
}
