return {
  "folke/lazy.nvim",
  cmd = { "G", "Git" }, -- Load the plugin when these commands are executed
  config = function()
    -- Your custom configuration here
    vim.api.nvim_set_keymap("n", "<leader>gx", ":LazyGit<CR>", { noremap = true, silent = true })
  end,
}
