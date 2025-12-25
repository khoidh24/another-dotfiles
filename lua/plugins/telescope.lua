return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
          require("telescope").load_extension("ui-select")
        end,
      },
    },
    config = function()
      local telescope = require("telescope")
      local builtin = require("telescope.builtin")

      -- Keymaps
      vim.keymap.set("n", "<leader><leader>", builtin.find_files, { noremap = true, silent = true })
      vim.keymap.set("n", "<leader>gg", builtin.live_grep, { noremap = true, silent = true })
      vim.keymap.set("n", "<leader>nn", ":Telescope notify<CR>", { noremap = true, silent = true })
      vim.keymap.set("n", "<leader>hl", builtin.highlights, { noremap = true, silent = true })

      telescope.setup({
        defaults = {
          file_ignore_patterns = { ".git/", "node_modules" },
        },
        pickers = {
          find_files = {
            hidden = true,
          },
        },
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })
    end,
  },
  {
    "nvim-pack/nvim-spectre",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      vim.keymap.set("n", "<leader>sr", function()
        require("spectre").open()
      end)
    end,
  },
}
