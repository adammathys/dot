return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim"
  },
  config = function()
    require("telescope").setup()

    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<Leader>e", builtin.find_files)
    vim.keymap.set("n", "<Leader>g", builtin.live_grep)

    -- Old keymaps for opening splits
    vim.keymap.set("n", "<Leader>p", [[:sp<cr>|:lua require('telescope.builtin').find_files{}<cr>]])
    vim.keymap.set("n", "<Leader>v", [[:vs<cr>|:lua require('telescope.builtin').find_files{}<cr>]])
  end,
}
