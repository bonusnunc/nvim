vim.cmd('NoNeckPain')
vim.opt_local.spelllang		= "es"
vim.opt_local.spell			= true

local function getWords()
  return (tostring(vim.fn.wordcount().words) .. " palabras")
end

require('lualine').setup {
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = {'filename'},
    lualine_x = {'filetype'},
    lualine_y = {'progress'},
    lualine_z = { getWords }
  },
  --tabline = {},
  --winbar = {},
  --inactive_winbar = {},
  --extensions = {}
}
