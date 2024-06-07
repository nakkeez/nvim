# Neovim Config

Config for Neovim using lazy.nvim package manager.

## Keymaps

mapleader = " "

### General

| Keymap | Command |
| --- | --- |
| <leader>pv | Open file structure |
| <leader>y / <leader>Y | Copy to clipboard |

### Plugins

#### NvimTree

| Keymap | Description |
| --- | --- |
| <leader>pt | Focus to NvimTree |
| <leader>pc | Collapse NvimTree recursively |
| <S-t> | Toggle NvimTree |
| <leader>pff | Find current file |

#### Telescope

| Keymap | Command |
| --- | --- |
| <leader>pf | Find files in current directory |
| <C-p> | Find git files |
| <leader>pws | Find string (start) |
| <leader>pWs | Find string (end) |
| <leader>ps | Find string |
| <leader>vh | List available help tags |

#### Undotree

| Keymap | Description |
| --- | --- |
| <leader>u | Toggle Undotree |

#### Harpoon

| Keymap | Description |
| --- | --- |
| <leader>a | Add to harpoon list |
| <C-e> | Open harpoon list |
| <C-h> | Open first harpoon list entry |
| <C-t> | Open second harpoon list entry |
| <C-n> | Open third harpoon list entry |
| <C-s> | Open fourth harpoon list entry |
| <C-S-P> | Toggle previous entry stored in harpoon list |
| <C-S-N> | Toggle next entry stored in harpoon list |
