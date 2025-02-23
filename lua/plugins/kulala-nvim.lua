return {
  "mistweaverco/kulala.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {},
  config = function()
    require("kulala").setup({
      -- Default settings; adjust as needed
      result = {
        format = "json", -- Automatically formats JSON responses
        show_headers = true, -- Show headers in the response pane
      },
      opts = {
        window = {
          position = "right", -- or "bottom"
          width = 50, -- Adjust to your preference
          height = 20,
        },
      },
    })

    -- Map <leader>rr to run the request under the cursor
    -- vim.api.nvim_set_keymap(
    --   "n",
    --   "<leader>rr",
    --   "<cmd>lua require('kulala').run()<CR>",
    --   { noremap = true, silent = true, desc = "Run Request" }
    -- )
    vim.filetype.add({
      extension = {
        ["http"] = "http",
      },
    })
  end,
}
