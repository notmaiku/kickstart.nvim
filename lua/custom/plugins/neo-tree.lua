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
            ['I'] = 'toggle_hidden',
          },
        },
        filesystem = {
          filtered_items = {
            visible = false, -- When true, they will just be hidden, not deleted.
            force_focus = true, -- This also applies to the filter_dirs option.
            hide_dotfiles = true, -- This hides ".*" files
            hide_gitignored = true, -- Hide files ignored in .gitignore
            hide_by_name = {
              --"*.swp",
              --".DS_Store",
              --"thumbs.db",
            },
            hide_by_pattern = { -- Uses glob style patterns
              --"*.png",
              --"!.gitignore",
              --"!.gitkeep",
            },
            never_show = { -- Remains hidden even if visible is toggled.
              --".DS_Store",
              --"thumbs.db"
            },
          },
        },
      }
    end,
  },
}
