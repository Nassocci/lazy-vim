# test 4
# Install Neovim

[GitHub](https://github.com/neovim/neovim/releases/tag/v0.10.2)
## AppImage
1. Download nvim.appimage
Run `chmod u+x nvim.appimage && ./nvim.appimage`
2. If your system does not have FUSE you can extract the appimage:
```
./nvim.appimage --appimage-extract
./squashfs-root/usr/bin/nvim
```
3. Create a Symlink Instead of Moving
`sudo ln -s /home/nassocci/Downloads/squashfs-root/usr/bin/nvim /usr/bin/nvim`


# [YT Guide](https://www.youtube.com/watch?v=N93cTbtLCIM)

## [LazyVim Documentation](https://www.lazyvim.org/installation)

## Issues / Plugins that need a second look
### open and new folder and observe the error -- does not occur anymore

### rest.nvim 
hererocks needs `sudo apt-get install libreadline-dev`
install lua 5.1 
```
sudo apt update
sudo apt install lua5.1 liblua5.1-0 liblua5.1-0-dev
```
`sudo ln -s /usr/bin/lua5.1 /usr/local/bin/lua`


# Fix unexpected behavior
## paste like insert aka `ctrl`+`shift`+`v`

In `lua/config/keymaps.lua`

```
vim.keymap.set("n", "P", function() 
  vim.cmd("put")                    
end)                                

```

# Prerequisites

## fd-find
```
sudo apt install fd-find
```
## lazy-git
https://github.com/jesseduffield/lazygit?tab=readme-ov-file#ubuntu
```
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
```
## mdformat mdformat-tables

```bash
pipx install mdformat mdformat-tables
```


# Installation

## 1. Open the LazyVim Docu and execute all the commands
## 2. Press `:` and write `checkhealth` to check that everything is in order

# Config

## `~/.config/nvim/lua/config/options.lua`
press `:` type `source %` and press enter to save the changes

# Notes
## Errors
```
`dashboard.nvim` is now the default LazyVim starter plugin.

To keep using `alpha.nvim`, please enable the `lazyvim.plugins.extras.ui.alpha` extra.
Or to hide this message, remove the alpha spec from your config.
```
add `{ import = "lazyvim.plugins.extras.ui.alpha" },` to `lua/config/lazy.lua`

## autocomplete
write something press `crtl`+`n` or use arrow keys and then press `enter`
### example
enter function, go down select "function Snippet"
write the name of the function press `tab`, write the params & press `tab`, write the type and press `tab`, now you can write your function as usual


# Keybindings
## `<leader>`+`s`+`k` -- search keymaps

## Temp terminal
### `<leader>`+`f`+`t`

## Lazy Vim
### `<leader>`+`l` -- open lazy vim
#### `S` -- capital S to sync all your plugins
#### `P` -- capital P to show profile
##### `crtl` + `f`-- to filter
enter 10 and press enter to search for plugins that are slower than 10 ms


## Treesitter 
### `<leader>`+`e` -- toggle treesitter on and off
Treesitter is a file explorer

## Lsp
### `<leader>`+`c` -- Open Lsp tab
###  `<leader>`+`cm` -- Mason 
### `<leader>`+`cr` -- rename
### `K` shows type information -- Hover information
### `<leader>`+`c`+`a` -- execute code action
![[Pasted image 20231224130613.png]]
### `<leader>`+`f`+`b` -- toggle between buffers aka switch windows
#### `[`+`b` -- go to left buffer 
#### `]`+`b` -- go to right buffer

## Search buffer

### `<leader>`+`s`+`b` -- search buffer aka current file


## Search and Replace with Nvim Spectre

### `<leader>`+`s`+`r` -- global search and replace --uses Spectre plugin
#### `d`+`d` -- to delete current item -- meaning you do not change it
#### `<leader>`+`R` -- leader + capital R to save the changes
#### `?` -- to get additional help

## Find files with telescope plugin 
### `<leader>`+`ff`

## File browser in Telescope
### `leader`+`s`+`B` -- `lua/plugins/file-browser.lua`

### `<leader>` + `s`+`g` -- search for a string across our project
search + grep

## Themes
###  `<leader>`+`u`+`C` -- change color scheme
it is a capital C

## Window management

### `<leader>`+`|` -- vertical Split
### `<leader>`+`-` -- horizontal Split
### `<crtl>`+`h` -- left
### `<crtl>`+`j` -- down
### `<crtl>`+`k` -- up
### `<crtl>`+`l` -- right
### `<crtl>`+ `↑` or `↓` or `←`or`→` -- to change window size

## Search
### `<leader>`+ `s`
#### `<leader>`+`s`+`h` -- search help

## Toggle
### `<leader>`+`u`+`l` -- toggle line numbers on and off

## Diagnostic
### `<leader>`+`d`+`o` -- diagnostic open float window
### `<leader>`+`d`+`p` -- go to previous diagnostic error
### `<leader>`+`d`+`n` -- go to next diagnostic error
### `<leader>`+`d`+`d` -- open diagnostic in telescope window
### `<leader>`+`x`+`x` -- View diagnostic
