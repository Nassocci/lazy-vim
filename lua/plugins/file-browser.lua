return {
  "nvim-telescope/telescope-file-browser.nvim",
  keys = {
    {
      "<leader>sB", -- define plugin specific keymaps
      ":Telescope file_browser path=%:p:h=%:p:h<cr>",
      desc = "Browse Files",
    },
  },
  config = function() --register extension after plugin loads
    require("telescope").load_extension("file_browser")
  end,
}
