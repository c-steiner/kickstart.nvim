-- Set lualine as statusline
return {
    'nvim-lualine/lualine.nvim',
    opts = {
      options = {
        -- icons_enabled = false,
        theme = 'nightfly',
        component_separators = '|',
        section_separators = '',
      },
      sections = {
        lualine_c = {
          {'buffers', mode = 4},
          {'filename', path = 1}
        }
      }
    },
}


