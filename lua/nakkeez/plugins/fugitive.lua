return {
    "tpope/vim-fugitive",
    config = function ()
        vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
        vim.keymap.set("n", "<leader>gf", vim.cmd.Gdiff)

        local FugitiveGroup = vim.api.nvim_create_augroup("FugitiveGroup", {})

        local autocmd = vim.api.nvim_create_autocmd
        autocmd("BufEnter", {
            group = FugitiveGroup,
            pattern = "*",
            callback = function()
                if vim.bo.ft ~= "fugitive" then
                    return
                end

                local bufnr = vim.api.nvim_get_current_buf()
                local opts = { buffer = bufnr, remap = false }

                vim.keymap.set("n", "<leader>pu", function()
                    vim.cmd.Git("push")
                end, opts)
            end,
        })
    end
}
