return {
	"shortcuts/no-neck-pain.nvim",
	--ft = {"markdown", "md"},
	version = "*",
	config = function()
		local noneckpain = require "no-neck-pain"

		noneckpain.setup{
			width = 110,

			integrations = {
				outline ={
					position = "left",
					reopen = true,
				},
			},
		}
	end,
}
