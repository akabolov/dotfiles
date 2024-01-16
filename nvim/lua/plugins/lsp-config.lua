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
            config.lua_ls.setup({})
            config.tsserver.setup({})
            config.eslint_d.setup({})
            config.gopls.setup({})
            vim.keymap.set('n', '<leader>k', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set('n', 'gr', vim.lsp.buf.references, {})
            vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
            vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, {})
            vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, {})
            vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, {})
            vim.keymap.set('n', '<space>wl', function()
                print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
            end, {})
            vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, {})
            vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, {})
            vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, {})
            vim.keymap.set('n', '<space>rf', function()
                vim.lsp.buf.format { async = true }
            end, {})
        end
    }
}
