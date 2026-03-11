return {
  --        
  -- ▝ ▘ ▗ ▖
  'nvim-lualine/lualine.nvim',
  version = '*',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
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
      lualine_b = { 'branch', 'diff', 'diagnostics' },
      lualine_c = {},
      lualine_x = { 'encoding', 'fileformat', 'filetype' },
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
      lualine_x = {},
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
      lualine_x = {},
      lualine_y = {},
      lualine_z = {},
    },
    extensions = {},
  },
}
