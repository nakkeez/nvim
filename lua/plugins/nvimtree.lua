return {
    "nvim-tree/nvim-tree.lua",
    version = "1.3.3",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("nvim-tree").setup {}

        vim.keymap.set("n", "<leader>pt", vim.cmd.NvimTreeFocus)
        vim.keymap.set("n", "<leader>pc", vim.cmd.NvimTreeCollapse)
        vim.keymap.set("n", "<S-t>", vim.cmd.NvimTreeToggle)
        vim.keymap.set("n", "<leader>pff", vim.cmd.NvimTreeFindFile)
    end,
}
