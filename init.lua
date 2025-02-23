-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
-- allows nvim to copy to clipboard
vim.api.nvim_set_option("clipboard", "unnamed")
vim.o.directory = "~/.cache/nvim/tmp"
vim.o.backupdir = "~/.cache/nvim/tmp"
vim.o.undodir = "~/.cache/nvim/tmp"
