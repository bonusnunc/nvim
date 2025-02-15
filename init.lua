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

--n_keymap('j', 'gj')
--n_keymap('k', 'gk')


vim.opt.fillchars = { eob = ' ' }
vim.opt.cursorline =	true
vim.opt.cursorcolumn =	true


require("config.lazy")
vim.cmd [[colorscheme catppuccin]]
require('lualine').setup()

require'lspconfig'.marksman.setup{}

-- Probando un parser de Asciidoc
local parser_config = require('nvim-treesitter.parsers').get_parser_configs()
parser_config.asciidoc = {
    install_info = {
        url = 'https://github.com/cathaysia/tree-sitter-asciidoc.git',
        files = { 'tree-sitter-asciidoc/src/parser.c', 'tree-sitter-asciidoc/src/scanner.c' },
        branch = 'master',
        generate_requires_npm = false,
        requires_generate_from_grammar = false,
    },
}
parser_config.asciidoc_inline = {
    install_info = {
        url = 'https://github.com/cathaysia/tree-sitter-asciidoc.git',
        files = { 'tree-sitter-asciidoc_inline/src/parser.c', 'tree-sitter-asciidoc_inline/src/scanner.c' },
        branch = 'master',
        generate_requires_npm = false,
        requires_generate_from_grammar = false,
    },
}
--vim.o.background = "light" -- or "light" for light mode
--vim.cmd([[colorscheme gruvbox]])
