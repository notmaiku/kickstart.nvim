return {
  -- Other plugins...
  {
    'github/copilot.vim',
    lazy = false, -- Load immediately (optional)
    config = function()
      -- Optional: Set keymaps or Copilot-specific settings
      vim.g.copilot_no_tab_map = true
      vim.g.copilot_assume_mapped = true
      vim.g.copilot_filetypes = {
        ['*'] = true, -- Enable for all filetypes (adjust as needed)
      }
    end,
  },
}
