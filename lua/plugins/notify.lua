return {
{
    "rcarriga/nvim-notify",
    config = function()
      vim.notify = require("notify")
      local notify = require("notify")

      require("notify").setup({
        stages = "slide",
        timeout = 3000,
        background_colour = "#000000",
      })

      vim.api.nvim_create_autocmd("RecordingEnter", {
        callback = function()
          local reg = vim.fn.reg_recording()
          notify("Recording macro @" .. reg, vim.log.levels.INFO, { title = "Macro", timeout = false })
        end,
      })

      vim.api.nvim_create_autocmd("RecordingLeave", {
        callback = function()
          notify("Stopped recording", vim.log.levels.INFO, { title = "Macro", timeout = 1000 })
        end,
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
