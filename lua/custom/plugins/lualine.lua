return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons', 'DrKJeff16/project.nvim' },
  config = function()
    require('lualine').setup {
      extensions = { 'oil', 'lazy', 'mason' },
      options = {
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
      },
      sections = {
        lualine_a = {
          {
            'mode',
            fmt = function(str)
              return str:sub(1, 1)
            end,
            -- color = { gui = 'bold' },
          },
        },
        lualine_b = {
          'branch',
          'diff',
          {
            'diagnostics',
            sources = {
              'nvim_workspace_diagnostic',
            },
          },
        },
        lualine_c = {
          {
            'project',
            no_project = '',
            separator = '',
            padding = { left = 1, right = 0 },
            fmt = function(str)
              return string.len(str) > 0 and str .. ' ' or ''
            end,
          },
          {
            'filename',
          },
        },
        lualine_x = {
          'filesize',
          'fileformat',
        },
        lualine_y = {
          {
            'filetype',
            icon_only = true,
          },
        },
        lualine_z = {
          'location',
        },
      },
    }
  end,
}
