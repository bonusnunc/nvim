return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			flavour = "latte",
			integrations = {
				treesitter = true,
				markdown = true,
			}
		})
	end,
}
