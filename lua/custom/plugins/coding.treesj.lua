--[[
  For splitting/joining blocks of code like arrays, hashes, statements,
  objects, dictionaries, etc.

  See https://github.com/Wansmer/treesj
--]]

return {
  'Wansmer/treesj',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  config = function()
    require('treesj').setup {--[[ your config ]]
      use_default_keymaps = false,
    }

    vim.keymap.set('n', '<leader>es', require('treesj').split, {
      desc = '[E]dit by [S]plitting Line',
    })
    vim.keymap.set('n', '<leader>ej', require('treesj').join, {
      desc = '[E]dit by [J]oining Lines',
    })
  end,
}
