return {
  'nvim-flutter/flutter-tools.nvim',
  lazy = false,
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    require('flutter-tools').setup {
      flutter_path = '/home/toasdn/dev/flutter/bin/flutter',
    }
  end,
}
