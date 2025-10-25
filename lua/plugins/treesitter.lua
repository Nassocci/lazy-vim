return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "bash",
      "html",
      "http",
      "javascript",
      "json",
      "lua",
      "markdown",
      "markdown_inline",
      "python",
      "query",
      "regex",
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
  config = function(_, opts)
    -- require("nvim-treesitter.configs").setup(opts)
    --
    --   -- 🔧 Extra safety: disable Treesitter highlighting entirely in diff/Diffview buffers
    vim.api.nvim_create_autocmd({ "BufWinEnter", "FileType" }, {
      pattern = { "diff", "DiffviewFiles", "DiffviewFileHistory", "DiffviewFilePanel", "DiffviewViews" },
      callback = function(args)
        pcall(vim.treesitter.stop, args.buf)
      end,
    })
  end,
}
