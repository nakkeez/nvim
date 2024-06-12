return {
    "neovim/nvim-lspconfig",

    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        "hrsh7th/nvim-cmp",
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip",
        "j-hui/fidget.nvim",
    },

    config = function()
        local cmp = require("cmp")
        local cmp_nvim_lsp = require("cmp_nvim_lsp")
        local lsp_capabilities = vim.tbl_deep_extend(
            "force",
            {},
            vim.lsp.protocol.make_client_capabilities(),
            cmp_nvim_lsp.default_capabilities()
        )

        require("fidget").setup({})
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = {
                -- Astro
                "astro",
                -- Bash
                "bashls",
                -- C#
                "omnisharp",
                -- CSS
                "cssls",
                "cssmodules_ls",
                "css_variables",
                -- Docker
                "dockerls",
                "docker_compose_language_service",
                -- ESLint
                "eslint",
                -- Elixir
                "elixirls",
                -- HTML
                "html",
                -- JSON
                "jsonls",
                -- JavaScript
                "tsserver",
                -- Lua
                "lua_ls",
                -- Python
                "pylsp",
                -- SQL
                "sqlls",
                -- Tailwind CSS
                "tailwindcss",
            },
            handlers ={
                function(server_name) -- default handler (optional)

                    require("lspconfig")[server_name].setup {
                        capabilities = lsp_capabilities,
                    }
                end,

                ["lua_ls"] = function()
                    local lsp_config = require("lspconfig")
                    lsp_config.lua_ls.setup {
                        capabilities = lsp_capabilities,
                        settings = {
                            Lua = {
                                diagnostics = {
                                    globals = { "vim" },
                                },
                            },
                        },
                    }
                end,
            },
        })
        local cmp_select = { behavior = cmp.SelectBehavior.Select }

        cmp.setup({
            snippet = {
                expand = function(args)
                    require("luasnip").lsp_expand(args.body)
                end,
            },
            mapping = cmp.mapping.preset.insert ({
                ["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
                ["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
                ["<C-y>"] = cmp.mapping.confirm({ select = true }),
                ["<C-e>"] = cmp.mapping.abort(),
                ["<C-Space>"] = cmp.mapping.complete(),
            }),
            sources = cmp.config.sources({
                { name = "nvim_lsp" },
                { name = "luasnip" },
            }, {
                { name = "buffer" }
            }),
        })

        vim.diagnostic.config({
            float = {
                focusable = false,
                style = "minimal",
                border = "rounded",
                source = "always",
                header = "",
                prefix = "",
            },
        })
    end,
}
