-- change some telescope options and a keymap to browse plugin files
return {
  "nvim-telescope/telescope.nvim",
  keys = {
    -- add a keymap to browse plugin files
    -- stylua: ignore
    {
      "<leader>fp",
      function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
      desc = "Find Plugin File",
    },
  },
  config = function()
    require("telescope").setup({
      defaults = {
        mappings = {
          i = {
            -- Scroll up in the preview window
            ["<C-k>"] = require("telescope.actions").preview_scrolling_up,
            -- Scroll down in the preview window
            ["<C-j>"] = require("telescope.actions").preview_scrolling_down,
            -- Scroll left in the preview window
            ["<C-h>"] = require("telescope.actions").preview_scrolling_left,
            -- Scroll right in the preview window
            ["<C-l>"] = require("telescope.actions").preview_scrolling_right,
          },
          n = {
            -- Scroll up in the preview window
            ["<C-k>"] = require("telescope.actions").preview_scrolling_up,
            -- Scroll down in the preview window
            ["<C-j>"] = require("telescope.actions").preview_scrolling_down,
            -- Scroll left in the preview window
            ["<C-h>"] = require("telescope.actions").preview_scrolling_left,
            -- Scroll right in the preview window
            ["<C-l>"] = require("telescope.actions").preview_scrolling_right,
          },
        },
      },
      pickers = {
        -- Default configuration for builtin pickers goes here:
        -- picker_name = {
        --   picker_config_key = value,
        --   ...
        -- }
      },
      extensions = {
        -- Your extension configuration goes here:
        -- extension_name = {
        --   extension_config_key = value,
        -- }
      },
    })

    -- Load any telescope extensions here
    -- require('telescope').load_extension('fzf')
  end,
  -- change some options
  -- opts = {
  --   defaults = {
  --     layout_strategy = "horizontal",
  --     layout_config = { prompt_position = "bottom" },
  --     sorting_strategy = "descending",
  --     winblend = 0,
  --   },
  -- },
}
