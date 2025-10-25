return {
  "sindrets/diffview.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  -- cmd = { "DiffviewOpen", "DiffviewClose" },
  opts = {
    merge_tool = {
      layout = "diff3_mixed", -- Or "diff3_horizontal" for full split panes; see :h diffview-config for options
      disable_diagnostics = true,
      -- winbar_info = true,
    },
  },
}
