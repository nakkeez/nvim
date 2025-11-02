return {
    "tpope/vim-fugitive",
    config = function ()
        vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "Git: show status" })
        vim.keymap.set("n", "<leader>gf", vim.cmd.Gdiffsplit, { desc = "Git: show difference" })
        vim.keymap.set("n", "<leader>gq", "<cmd>Gwrite<cr>", { desc = "Git: add file" })
        vim.keymap.set("n", "<leader>gc", "<cmd>Git commit<cr>", { desc = "Git: commit changes" })
        vim.keymap.set("n", "<leader>gpl", "<cmd>Git pull<cr>", { desc = "Git: pull changes" })
        vim.keymap.set("n", "<leader>gpu", "<cmd>15 split|term git push<cr>", { desc = "Git: push changes" })
        vim.keymap.set("v", "<leader>gb", ":Git blame<cr>", { desc = "Git: blame selected line" })

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

                vim.keymap.set("n", "<leader>pl", function()
                    vim.cmd.Git("pull")
                end, opts)
                vim.keymap.set("n", "<leader>pu", function()
                    vim.cmd.Git("push")
                end, opts)
            end,
        })
    end
}
