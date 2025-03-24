return {
  'akinsho/git-conflict.nvim',
  config = function()
    require('git-conflict').setup {
      default_mappings = true, -- Enable default mappings
      disable_diagnostics = true, -- Disable diagnostics in conflict regions
    }
  end,
}
