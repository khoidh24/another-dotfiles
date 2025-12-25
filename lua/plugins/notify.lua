return {
	{
		"rcarriga/nvim-notify",
		config = function()
			vim.notify = require("notify")
			require("notify").setup({
				stages = "slide",
				timeout = 3000,
				background_colour = "#000000",
			})
		end,
	},
	{
		"stevearc/dressing.nvim",
	},
	{
		"folke/noice.nvim",
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
		config = function()
			require("noice").setup({})
		end,
	},
}
