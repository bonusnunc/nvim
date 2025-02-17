vim.cmd('NoNeckPain')
vim.opt_local.spelllang		= "es"
vim.opt_local.spell			= true
vim.opt.conceallevel		= 2
vim.opt.textwidth			= 100
vim.opt.formatoptions		= "tqjwan1p"
vim.opt.wrap				= false
vim.opt.linebreak			= true

vim.opt_local.whichwrap:append("<,>,h,l,[,]")

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

local list_patterns = {
	adoc_1 = "-",
    adoc_2 = "--",
    adoc_3 = "---",
    adoc_4 = "----",
    adoc_5 = "-----",
	unordered = "[-+*.]", -- - + * .
	digit = "%d+[.)]", -- 1. 2. 3.
}

local default_config = {
  enabled = true,
  colon = { -- if a line ends in a colon
    indent = true, -- if in list and line ends in `:` then create list
    indent_raw = true, -- above, but doesn't need to be in a list to work
    preferred = "-", -- what the new list starts with (can be `1.` etc)
  },
  cycle = { -- Cycles the list type in order
      "-",   -- whatever you put here will match the first item in your list
      "*",   -- for example if your list started with a `-` it would go to `*`
      "1.",  -- this says that if your list starts with a `*` it would go to `1.`
      ".",  -- this all leverages the power of recalculate.
  },
  lists = { -- configures list behaviours
    -- Each key in lists represents a filetype.
    -- The value is a table of all the list patterns that the filetype implements.
    -- See how to define your custom list below in the readme.
    -- You must put the file name for the filetype, not the file extension
    -- To get the "file name", it is just =:set filetype?= or =:se ft?=.
    markdown = {
      list_patterns.unordered,
      list_patterns.digit,
    },
    text = {
      list_patterns.unordered,
      list_patterns.digit,
    },
    asciidoc = {
		--list_patterns.adoc_1,
		--list_patterns.adoc_2,
		--list_patterns.adoc_3,
		--list_patterns.adoc_4,
		--list_patterns.adoc_5,
        list_patterns.unordered,
        list_patterns.digit	
    },
  },
  checkbox = {
    left = "%[", -- the left checkbox delimiter (you could change to "%(" for brackets)
    right = "%]", -- the right checkbox delim (same customisation as above)
    fill = "x", -- if you do the above two customisations, your checkbox could be (x) instead of [x]
  },

  -- this is all based on lua patterns, see "Defining custom lists" for a nice article to learn them
}
