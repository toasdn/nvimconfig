return {
  'barrett-ruth/live-server.nvim',
  config = true,
  cmd = { 'LiveServerStart', 'LiveServerStop' },
  keys = {
    {
      '<leader>ls',
      '<cmd>LiveServerStart<cr>',
      desc = 'Start Live Server',
    },
    {
      '<leader>lx',
      '<cmd>LiveServerStop<cr>',
      desc = 'Stop Live Server',
    },
  },
}
