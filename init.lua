vim.o.guifont			= "GoMono Nerd Font Mono:h16"
vim.opt.clipboard		= "unnamedplus"

vim.opt.tabstop =		4
vim.opt.softtabstop =	4
vim.opt.shiftwidth =	4

vim.opt.number			= true
vim.opt.relativenumber	= true

local n_keymap = function(lhs, rhs)
    vim.api.nvim_set_keymap('n', lhs, rhs, { noremap = true, silent = true })
end

local function getWords()
  return tostring(vim.fn.wordcount().words)
end

n_keymap('j', 'gj')
n_keymap('k', 'gk')

vim.opt.wrap =			true
vim.opt.linebreak =		true

vim.opt.background =	"light"
vim.opt.fillchars = { eob = ' ' }
vim.opt.cursorline =	true
vim.opt.cursorcolumn =	true


require("config.lazy")
require('solarized').set()
--vim.g.material_style = "lighter"
--vim.cmd [[colorscheme solarized]]
require('lualine').setup()

require'lspconfig'.marksman.setup{}

--vim.o.background = "light" -- or "light" for light mode
--vim.cmd([[colorscheme gruvbox]])
