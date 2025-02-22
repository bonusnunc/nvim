return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate | TSInstall asciidoc asciidoc_inline query",
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "c", "lua", "vim", "vimdoc", "markdown", "html" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  
        })
    end
}
