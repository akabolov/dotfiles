return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "tsserver" }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local config = require("lspconfig")

            -- setting servers
            config.lua_ls.setup({})
            config.tsserver.setup({})
            config.eslint_d.setup({})
            config.gopls.setup({})
            config.clangd.setup({})

            vim.keymap.set('n', '<leader>k', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
            vim.keymap.set('n', 'gd', ":Trouble lsp_definitions <cr>", {})
            vim.keymap.set('n', 'gr', ":Trouble lsp_references <cr>", {})
            vim.keymap.set('n', 'gi', ":Trouble lsp_implementations <cr>", {})
            --vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, {})
            vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, {})
            vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, {})
            vim.keymap.set('n', '<space>wl', function()
                print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
            end, {})
            vim.keymap.set('n', '<space>D', ":Trouble lsp_type_definitions <cr>", {})
            vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, {})
            vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, {})
            vim.keymap.set('n', '<space>rf', function()
                vim.lsp.buf.format { async = true }
            end, {})
        end
    }
}
