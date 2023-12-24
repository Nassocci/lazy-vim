-- Set the focus on undotree window when it's toggled
vim.g.undotree_SetFocusWhenToggle = 1

-- Set the custom undotree window width and diff panel height
vim.g.undotree_CustomUndotreeCmd = "topleft vertical 40 new"
vim.g.undotree_CustomDiffpanelCmd = "belowright 10 new"
-- vim.g.undotree_CustomDiffpanelCmd = "belowright 30 new"
return {
  "mbbill/undotree",
  config = false,
  keys = {
    { "<leader>uu", vim.cmd.UndotreeToggle, { noremap = true, silent = true }, desc = "Toggle Undotree" },
  },
}
