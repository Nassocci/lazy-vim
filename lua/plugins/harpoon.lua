return {
  "ThePrimeagen/harpoon",
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  -- config = true,
  config = function()
    local screen_width = vim.api.nvim_get_option("columns")
    local screen_height = vim.api.nvim_get_option("lines")
    local width_percentage = 0.47
    local height_percentage = 0.3

    require("harpoon").setup({
      menu = {
        width = math.floor(screen_width * width_percentage),
        height = math.floor(screen_height * height_percentage),
      },
    })
  end,
  keys = {
    { "<leader>a", "<cmd>lua require('harpoon.mark').add_file()<cr>", desc = "Mark file with harpoon" },
    { "<C-e>", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", desc = "Show harpoon marks" },
    { "<leader>hn", "<cmd>lua require('harpoon.ui').nav_next()<cr>", desc = "Go to next harpoon mark" },
    { "<leader>hp", "<cmd>lua require('harpoon.ui').nav_prev()<cr>", desc = "Go to previous harpoon mark" },
    -- Adding new keymaps
    { "<leader>1", "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", desc = "harpoon file 1" },
    { "<leader>2", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", desc = "harpoon file 2" },
    { "<leader>3", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", desc = "harpoon file 3" },
    { "<leader>4", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", desc = "harpoon file 4" },
    { "<leader>5", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", desc = "harpoon file 5" },
    { "<leader>6", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", desc = "harpoon file 6" },
  },
}
