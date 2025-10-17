require('config.options')
require("config.lazy")

vim.cmd([[
  filetype indent off
  set noautoindent
  set nosmartindent
  set nocindent
  set indentexpr=
  set indentkeys=
]])

require('lualine').setup {
  options = {
    icons_enabled = true,
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = {
      {'filename', file_status = true, path = 1}, -- 1 for relative path
    },
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'},
  },
  extensions = {'fugitive', 'nvim-tree'}
}

