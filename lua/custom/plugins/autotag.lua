return {
  'windwp/nvim-ts-autotag',
  ft = { 'html', 'xml', 'jsx', 'tsx', 'typescript' }, -- Load only for specific filetypes
  config = function()
    require('nvim-ts-autotag').setup()
  end,
}
