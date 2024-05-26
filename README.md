# Neovim Config

Config for Neovim using lazy.nvim package manager.

## Keymaps

mapleader = " "

### General

| Keymap | Command |
| --- | --- |
| <leader> | vim.cmd.Ex |

### Plugins

#### NvimTree

| Keymap | Command |
| --- | --- |
| <leader>pt | vim.cmd.NvimTreeFocus |
| <leader>pc | vim.cmd.NvimTreeCollapse |
| <S-t> | vim.cmd.NvimTreeToggle |
| <leader>pff | vim.cmd.NvimTreeFindFile |

#### Telescope

| Keymap | Command |
| --- | --- |
| <leader>pf | vim.cmd.Telescope find_files |
| <C-p> | vim.cmd.Telescope git_files |
| <leader>pws | vim.cmd.Telescope grep_string({search = vim.fn.expand("<cword>")}) |
| <leader>pWs | vim.cmd.Telescope grep_string({search = vim.fn.expand("<cWORD>")}) |
| <leader>ps | vim.cmd.Telescope grep_string({search = vim.fn.input("Grep > ")}) |
| <leader>vh | vim.cmd.Telescope help_tags |

#### Undotree

| Keymap | Command |
| --- | --- |
| <leader>u | vim.cmd.UndoTreeToggle |

