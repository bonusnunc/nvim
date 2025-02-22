vim.opt.guifont				= 'Iosevka Fixed Curly Slab:h18'
vim.opt.fillchars			= { eob = ' ' }
vim.opt.scrolloff			= 3

vim.opt.number				= true
vim.opt.relativenumber		= true
vim.opt.cursorline			= true
vim.opt.cursorcolumn		= true

vim.opt.clipboard			= "unnamedplus"
vim.g.mapleader				= ' '
vim.g.maplocalleader		= ' '

vim.opt.tabstop				= 4
vim.opt.softtabstop			= 4
vim.opt.shiftwidth			= 4

-- local n_keymap = function(lhs, rhs)
--    vim.api.nvim_set_keymap('n', lhs, rhs, { noremap = true, silent = true })
-- end

require("config.lazy")
vim.cmd('colorscheme adwaita')
require('lualine').setup()

require("luasnip.loaders.from_snipmate").lazy_load()


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
        files = { 'tree-sitter-asciidoc_inline/src/parser.c', 
        'tree-sitter-asciidoc_inline/src/scanner.c' },
        branch = 'master',
        generate_requires_npm = false,
        requires_generate_from_grammar = false,
    },
}

