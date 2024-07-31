local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({
	  buffer = bufnr
  })

  vim.keymap.set('n', '<leader>k', function() vim.lsp.buf.hover() end)
  vim.keymap.set('n', '<F5>', function() vim.lsp.buf.rename() end)
end)

require'lspconfig'.lua_ls.setup {
  settings = {
    Lua = {
      diagnostics = {
        globals = {'vim'}
      }
    }
  }
}
