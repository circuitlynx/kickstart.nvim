return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  opts = {
    options = {
      offsets = {
        {
          filetype = 'neo-tree',
          text = 'Neotree',
          highlight = 'Directory',
          text_align = 'center',
          separator = true,
        },
      },
    },
  },
}
