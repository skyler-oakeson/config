local lsp = require('lsp-zero')
lsp.preset('recommended')

require('mason.settings').set({
  ui = {
    border = 'single'
  }
})

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({ buffer = bufnr })
end)

lsp.ensure_installed({
    'tsserver',
    'clangd',
    'lua_ls',
    'pyright'
})

vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    update_in_insert = false,
    underline = false,
    severity_sort = false,
    float = {
      border = 'single',
    },
})

require('lspconfig').pylsp.setup {
    settings = {
        pylsp = {
            plugins = {
                pycodestyle = false
            }
        }
    }
}

lsp.nvim_workspace()
lsp.setup()
