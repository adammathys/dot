return {
  "catppuccin/nvim",
  config = function()
    vim.cmd "syntax on"

    require("catppuccin").setup({
      flavour = "frappe",
      background = {
        light = "latte",
        dark = "frappe",
      },
      integrations = {
      },
    })

    vim.cmd.colorscheme "catppuccin-frappe"

    vim.o.termguicolors = true
    vim.o.background = 'light'
  end,
}
