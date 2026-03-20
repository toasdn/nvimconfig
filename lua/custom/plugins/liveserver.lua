return {
  'barrett-ruth/live-server.nvim',
  config = true,
  cmd = { 'LiveServerStart', 'LiveServerStop' },
  keys = {
    {
      '<leader>ls',
      '<cmd>LiveServerStart<cr>',
      desc = '[L]ive server [s]tart',
    },
    {
      '<leader>lq',
      '<cmd>LiveServerStop<cr>',
      desc = '[L]ive server [q]uit',
    },
  },
}
