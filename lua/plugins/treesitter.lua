return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "bash",
      "html",
      "http", -- <- Make sure http is included
      "javascript",
      "json",
      "lua",
      "markdown",
      "markdown_inline",
      "python",
      "query",
      "regex",
      "text",
      "tsx",
      "typescript",
      "vim",
      "yaml",
    },
    highlight = {
      enable = true,
      disable = { "kulala_verbose_result" },
    },
    indent = {
      enable = true,
      disable = { "kulala_verbose_result" },
    },
    fold = {
      enable = true,
      disable = { "kulala_verbose_result" },
    },
  },
}
