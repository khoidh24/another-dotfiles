return {
  {
    "kdheepak/lazygit.nvim",
    keys = {
      { "<leader>lg", ":LazyGit<Return>", silent = true, noremap = true },
    },
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("gitsigns").setup({
        signs = {
          add = { text = "│" },
          change = { text = "│" },
          delete = { text = "_" },
          topdelete = { text = "‾" },
          changedelete = { text = "~" },
        },
        current_line_blame = true,
        current_line_blame_opts = {
          delay = 100,
          virt_text = true,
          virt_text_pos = "eol",
        },
        current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>",
        on_attach = function(bufnr)
          local gs = package.loaded.gitsigns
          local map = function(mode, l, r, opts)
            opts = opts or {}
            opts.buffer = bufnr
            vim.keymap.set(mode, l, r, opts)
          end

          map("n", "<leader>gd", gs.diffthis)
          map("n", "<leader>gb", function()
            gs.blame_line({ full = true })
          end)
          map("n", "[c", gs.prev_hunk)
          map("n", "]c", gs.next_hunk)
        end,
      })
    end,
  },
}
