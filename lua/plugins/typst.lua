return {
  'chomosuke/typst-preview.nvim',
  lazy = false, -- or ft = 'typst'
  version = '1.*',
  config = function()
    require('typst-preview').setup {
      dependencies_bin = { tinymist = 'tinymist' },
    }
    vim.keymap.set('n', '<leader>p', '<cmd>TypstPreview<CR>', { desc = 'Typst [P]review' })
  end,
}
