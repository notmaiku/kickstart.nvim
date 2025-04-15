return {
  {
    'neovim/nvim-lspconfig',
    opts = {
      servers = {
        gdscript = {
          cmd = vim.lsp.rpc.connect('127.0.0.1', '6005'), -- Connect to the Godot LSP server via TCP
          filetypes = { 'gdscript' },
          root_dir = require('lspconfig.util').root_pattern('project.godot', '.git'),
          on_attach = function(client, bufnr)
            -- Add any on_attach logic here
          end,
        },
      },
    },
  },
}
