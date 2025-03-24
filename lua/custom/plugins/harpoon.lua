return {
  {
    'ThePrimeagen/harpoon', -- Plugin repository
    branch = 'harpoon2', -- Specify the branch to use
    dependencies = { 'nvim-lua/plenary.nvim' }, -- Required dependency
    opts = {}, -- Options for the plugin (currently empty)
    config = function()
      local harpoon = require 'harpoon' -- Load the harpoon module

      -- REQUIRED: Setup the harpoon plugin
      harpoon:setup {}
      -- REQUIRED

      -- Keymap to add the current file to the harpoon list
      vim.keymap.set('n', '<leader>a', function()
        harpoon:list():add() -- Append the current file to the list
      end)

      -- Keymap to toggle the quick menu for harpoon
      vim.keymap.set('n', '<C-e>', function()
        harpoon.ui:toggle_quick_menu(harpoon:list()) -- Toggle the quick menu
      end)

      -- Keymaps to select specific files from the harpoon list
      vim.keymap.set('n', '<C-1>', function()
        harpoon:list():select(1) -- Select the first file in the list
      end)
      vim.keymap.set('n', '<C-2>', function()
        harpoon:list():select(2) -- Select the second file in the list
      end)

      -- Keymaps to navigate through the harpoon list
      vim.keymap.set('n', '<C-S-P>', function()
        harpoon:list():prev() -- Go to the previous file in the list
      end)
      vim.keymap.set('n', '<C-S-N>', function()
        harpoon:list():next() -- Go to the next file in the list
      end)
    end,
  },
}
