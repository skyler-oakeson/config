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

cmp = require('cmp')
cmp.setup({
  sources = {
    {name = 'nvim_lsp'},
  },
  mapping = {
    ['<C-y>'] = cmp.mapping.confirm({select = false}),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-d>'] = cmp.mapping.scroll_docs(4), 
    ['<C-k>'] = cmp.mapping(function()
      if cmp.visible() then
        cmp.select_prev_item({behavior = 'insert'})
      else
        cmp.complete()
      end
    end),
    ['<C-j>'] = cmp.mapping(function()
      if cmp.visible() then
        cmp.select_next_item({behavior = 'insert'})
      else
        cmp.complete()
      end
    end),
  },
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  window = {
    completion = cmp.config.window.bordered({
      border = 'single'
    }),
    documentation = cmp.config.window.bordered({
      border = 'single'
    })
  }
})

lsp.nvim_workspace()
lsp.setup()
