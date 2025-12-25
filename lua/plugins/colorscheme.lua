return {
	{
		"navarasu/onedark.nvim",
		config = function()
			require("onedark").setup({
				style = "deep",
				transparent = true,
			})
			require("onedark").load()
			vim.cmd([[
  highlight! link FloatBorder Normal
  highlight! link NormalFloat Normal
]])
		end,
	},
	{
		"xiyaowong/transparent.nvim",
		config = function()
			require("transparent").setup({
				groups = {
					"Normal",
					"NormalNC",
					"Comment",
					"Constant",
					"Special",
					"Identifier",
					"Statement",
					"PreProc",
					"Type",
					"Underlined",
					"Todo",
					"String",
					"Function",
					"Conditional",
					"Repeat",
					"Operator",
					"Structure",
					"LineNr",
					"NonText",
					"SignColumn",
					"StatusLine",
					"StatusLineNC",
					"EndOfBuffer",
				},
				extra_groups = {},
				exclude_groups = {},
				on_clear = function() end,
			})
		end,
	},
}
