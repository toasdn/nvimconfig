return {
  'zbirenbaum/copilot.lua',
  dependencies = {
    'copilotlsp-nvim/copilot-lsp',
  },
  event = 'InsertEnter',
  config = function()
    require('copilot').setup {
      suggestion = {
        auto_trigger = true,
        keymap = {
          accept = '<M-tab>',
        },
      },
      nes = {
        enabled = false,
        auto_trigger = false,
        keymap = {
          accept = '<M-s-tab>',
          dismiss = '<M-esc>',
        },
      },
    }
  end,
}
