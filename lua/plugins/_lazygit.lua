return {
  {
    "kdheepak/lazygit.nvim",
    cmd = "LazyGit",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      { "<leader>gu", "<cmd>LazyGit<cr>", desc = "Git Update (LazyGit)" },
    },
  },
}
