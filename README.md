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
| `<Tab>` | Open harpoon list |
| `<S-1>` | Open first harpoon list entry |
| `<S-2>` | Open second harpoon list entry |
| `<S-3>` | Open third harpoon list entry |
| `<S-4>` | Open fourth harpoon list entry |
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
| `<leader>gn` | Rename |

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
| `<leader>ff` | Find files in current directory |
| `<leader>fu` | Find git files |
| `<leader>pws` | Find first part of active string |
| `<leader>fW` | Find whole active string |
| `<leader>fs` | Find string under cursor or selection in currect directory |
| `<leader>fl` | Find string in current directory using live grep |
| `<leader>fb` | List open buffers |
| `<leader>fh` | List available help tags |

#### Trouble

| Keymap | Description |
| --- | --- |
| `<leader>xx` | Toggle trouble diagnostics list |

#### Undotree

| Keymap | Description |
| --- | --- |
| `<leader>u` | Toggle Undotree |




