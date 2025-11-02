require("config.options")
require("config.keymaps")
require("config.lazy")

local augroup = vim.api.nvim_create_augroup
local NakkeezGroup = augroup("NakkeezGroup", {})
local autocmd = vim.api.nvim_create_autocmd

autocmd({"BufWritePre"}, {
    group = NakkeezGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

autocmd({"LspAttach"}, {
    group = NakkeezGroup,
    callback = function(e)
        local opts = { buffer = e.buf }
        vim.keymap.set("n", "<leader>gd", function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "<leader>gr", function() vim.lsp.buf.references() end, opts)
        vim.keymap.set("n", "<leader>gi", function() vim.lsp.buf.implementation() end, opts)
        vim.keymap.set("n", "<leader>gh", function() vim.lsp.buf.hover() end, opts)
        vim.keymap.set("n", "<leader>gt", function() vim.lsp.buf.type_definition() end, opts)
    end
})
