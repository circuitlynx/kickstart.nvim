return {
  --        
  -- ▝ ▘ ▗ ▖
  'nvim-lualine/lualine.nvim',
  version = '*',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup {
      options = {
        --section_separators = { left = '◣', right = '◢' },
        section_separators = { left = '▄', right = '▄' },
        component_separators = { left = '└┐', right = '┌┘' },
        --component_separators = { left = '\\', right = '/' },
        icons_enabled = true,
        theme = 'tokyonight',
        disabled_filetypes = {
          winbar = { 'neo-tree' },
        },
        ignore_focus = {},
        always_divide_middle = true,
        always_show_tabline = true,
        globalstatus = true,
        refresh = {
          statusline = 1000,
          tabline = 1000,
          winbar = 1000,
          refresh_time = 16, -- ~60fps
          events = {
            'WinEnter',
            'BufEnter',
            'BufWritePost',
            'SessionLoadPost',
            'FileChangedShellPost',
            'VimResized',
            'Filetype',
            'CursorMoved',
            'CursorMovedI',
            'ModeChanged',
          },
        },
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff' },
        lualine_c = { 'diagnostics' },
        lualine_x = { 'lsp_status' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {},
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {},
      },
      tabline = {
        lualine_a = {
          {
            'buffers',
            hide_filename_extension = true,
            --   section_separators = { left = '◤', right = '◥' },
            section_separators = { left = '▀', right = '▀' },
            -- component_separators = { left = '/', right = '\\' },

            component_separators = { left = '┌┘', right = '└┐' },
            use_mode_colors = true,
            symbols = {
              alternate_file = '',
            },
          },
        },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
      },
      winbar = {
        lualine_a = {},
        lualine_b = {
          {
            'filename',
            path = 3,
            section_separators = { left = '▀', right = '▀' },
            --section_separators = { left = '◤', right = '◥' },
            -- component_separators = { left = '/', right = '\\' },
            component_separators = { left = '┌┘', right = '└┐' },
          },
        },
        lualine_c = {},
        lualine_x = {
          {
            'encoding',
            section_separators = { left = '▀', right = '▀' },
            component_separators = { left = '┌┘', right = '└┐' },
          },
          {
            'fileformat',
            section_separators = { left = '▀', right = '▀' },
            component_separators = { left = '┌┘', right = '└┐' },
          },
          {
            'filetype',
            section_separators = { left = '▀', right = '▀' },
            component_separators = { left = '┌┘', right = '└┐' },
          },
        },
        lualine_y = {},
        lualine_z = {},
      },
      inactive_winbar = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {
          {
            'filename',
            path = 1,
            section_separators = { left = '◤', right = '◥' },
            component_separators = { left = '/', right = '\\' },
          },
        },
        lualine_x = {
          {
            'encoding',
            section_separators = { left = '▀', right = '▀' },
            component_separators = { left = '┌┘', right = '└┐' },
          },
          {
            'fileformat',
            section_separators = { left = '▀', right = '▀' },
            component_separators = { left = '┌┘', right = '└┐' },
          },
          {
            'filetype',
            section_separators = { left = '▀', right = '▀' },
            component_separators = { left = '┌┘', right = '└┐' },
          },
        },
        lualine_y = {},
        lualine_z = {},
      },
      extensions = {},
    }
    vim.keymap.set('n', '<leader>w', '<cmd>bdelete<CR>', { desc = 'Closes the current buffer.' })
    vim.keymap.set('n', '<Tab>', '<cmd>bnext<CR>', { desc = 'Moves to the next buffer.' })
    vim.keymap.set('n', '<S-Tab>', '<cmd>bprev<CR>', { desc = 'Moves to the previous buffer.' })
  end,
}
