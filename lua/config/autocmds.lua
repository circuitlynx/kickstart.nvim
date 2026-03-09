-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.hl.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function() vim.hl.on_yank() end,
})

-- For a transparent interface
local function set_transparent()
  local groups = {
    'Normal',
    'NormalFloat',
    'TabLineFill',
    'NormalNC',
    'NeoTreeNormal',
    'NeoTreeNormalNC',
    'NeoTreeEndOfBuffer',
    'NeoTreeFloatNormal',
    'SignColumn',
    'FoldColumn',
    'StatusLine',
    'StatusLineLC',
    'StatusLineNC',
  }
  for _, group in ipairs(groups) do
    vim.api.nvim_set_hl(0, group, { bg = 'NONE' })
  end
end

set_transparent()

vim.api.nvim_create_autocmd('ColorScheme', {
  callback = set_transparent,
})
