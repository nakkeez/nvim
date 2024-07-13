# Neovim Config

Config for Neovim using lazy.nvim package manager.

## Keymaps

mapleader = " "

### General

| Keymap | Command |
| --- | --- |
| `<leader>pv` | Open file structure |
| `<leader>y` / `<leader>Y` | Copy to clipboard |
| `<leader>d` | Delete without yanking |

### Plugins

#### Cloak

| Keymap | Description |
| --- | --- |
| `<leader>cc` | Toggle cloak mode |

#### Fugitive

| Keymap | Description |
| --- | --- |
| `<leader>gs` | Git status |
| `<leader>gf` | Git difference |
| `<leader>pu` | Git push |

#### Harpoon

| Keymap | Description |
| --- | --- |
| `<leader>a` | Add to harpoon list |
| `<C-e>` | Open harpoon list |
| `<C-h>` | Open first harpoon list entry |
| `<C-t>` | Open second harpoon list entry |
| `<C-n>` | Open third harpoon list entry |
| `<C-s>` | Open fourth harpoon list entry |
| `<C-S-P>` | Toggle previous entry stored in harpoon list |
| `<C-S-N>` | Toggle next entry stored in harpoon list |

#### LSP

| Keymap | Description |
| --- | --- |
| `<C-p>` | Select previous item from the list |
| `<C-n>` | Select next item from the list |
| `<C-y>` | Confirm selection |
| `<C-e>` | Abort |
| `<C-Space>` | Complete |
| `<leader>gd` | Go to definition |
| `<leader>gr` | Show references |
| `<leader>gi` | Go to implementation |
| `<leader>gh` | Hover |
| `<leader>gt` | Type definition |

#### NvimTree

| Keymap | Description |
| --- | --- |
| `<leader>pt` | Focus to NvimTree |
| `<leader>pc` | Collapse NvimTree recursively |
| `<S-t>` | Toggle NvimTree |
| `<leader>pff` | Find current file |

#### Telescope

| Keymap | Command |
| --- | --- |
| `<leader>pf` | Find files in current directory |
| `<C-p>` | Find git files |
| `<leader>pws` | Find first part of active string |
| `<leader>pWs` | Find whole active string |
| `<leader>ps` | Find inputted string |
| `<leader>vh` | List available help tags |

#### Trouble

| Keymap | Description |
| --- | --- |
| `<leader>xx` | Toggle trouble diagnostics list |

#### Undotree

| Keymap | Description |
| --- | --- |
| `<leader>u` | Toggle Undotree |




