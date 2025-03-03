return {
  {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons',
      'MunifTanjim/nui.nvim',
    },
    config = function()
      require('neo-tree').setup {
        close_if_last_window = true, -- Close Neo-tree if it's the last window
        enable_git_status = true,
        enable_diagnostics = true,
        default_component_configs = {
          icon = {
            folder_closed = '',
            folder_open = '',
            folder_empty = '',
          },
        },
        window = {
          mappings = {
            ['<space>'] = 'toggle_node',
            ['<cr>'] = 'open',
            ['<tab>'] = 'open_tabnew',
            ['<s-tab>'] = 'open_split',
            ['<c-tab>'] = 'open_vsplit',
            ['<bs>'] = 'navigate_up',
            ['.'] = 'set_root',
            ['H'] = 'toggle_hidden',
            ['/'] = 'fuzzy_finder',
            ['D'] = 'fuzzy_finder_directory',
            ['#'] = 'fuzzy_sorter',
            ['f'] = 'filter_on_submit',
            ['<c-l>'] = 'clear_filter',
            ['[g'] = 'prev_git_modified',
            [']g'] = 'next_git_modified',
          },
        },
      }
    end,
  },
}
