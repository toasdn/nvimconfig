return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
  config = function()
    require('oil').setup {}

    vim.keymap.set('n', '<leader>-', '<cmd>Oil<CR>', { desc = 'Open parent directory' })
    vim.keymap.set('n', '<leader>_', '<cmd>Oil .<CR>', { desc = 'Open project root' })
  end,
}
