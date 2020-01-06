# init.vim
My Neovim configuration
[[config_working_screenshot.png]]

## Requirements
* [Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim): Latest Stable build preferably
* [vim-plug](https://github.com/junegunn/vim-plug)
* Python 2/3 and pip2/3 if you are doing Python dev

## Installation
1. Copy this **init.vim** to ~/.config/nvim/
2. Launch Neovim and run `:PlugInstall`
3. Close and relaunch Neovim

## Config Notes
Folding is used to break the config into sections. If the file is not folded when opened, use the default `zM` shortcut to fold all.
![Folded Config](folded_config.png)

## Custom Keyboard Mappings
Keyboard mappings are mostly inspired by Spacemacs.

**Leader Key:** `<SPACE>`

| Shortcut  | Description |
| ------------- | ------------- |
| `<leader>q`  | quit  |
| `<leader>bd`  | close buffer  |
| `<leader>fs` | save buffer |
| `<leader>fe` | open netrw file browser |
| `<leader>ve` | open vimrc |
| `<leader>vr` | reload vimrc |
| `<leader>w.` | split window horizontal |
| `<leader>w/` | split window vertical |
| `<leader>wd` | close split |
| `<C-k>` | move up a split |
| `<C-j>` | move down a split |
| `<C-h>` | move left a split |
| `<C-l>` | move right a split |
| `<leader>M` | maximize a split |
| `<leader>m` | minimize a split |
| `<leader>ff` | FZF file search cwd |
| `<leader>fh` | FZF file search ~ |
| `<leader>fw` | FZF file search ~/Dropbox/wiki/ |
| `<leader>bb` | FZF buffer search |
| `<leader>;` | FZF lines search |
| `<leader>o` | FZF btags search |
| `<leader>O` | FZF tags search |
| `<leader>?` | FZF history search |
| `<leader>jj` | easymotion move to char |
| `<leader>jl` | easymotion move to line |
| `<leader>jw` | easymotion move to word |
| `<leader>gs` | vim-fugitive git status |
| `<leader>gc` | vim-fugitive git commit |
| `<leader>gu` | vim-fugitive git pull |
| `<leader>gp` | vim-fugitive git push |
| `<leader>pp` | markdown preview in web browser |
| `<leader>=` | auto format |
