return {
  {
    "windwp/nvim-ts-autotag",
    event = "VeryLazy",
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = function()
      require("nvim-ts-autotag").setup({
        filetypes = {
          "html",
          "javascript",
          "javascriptreact",
          "typescript",
          "typescriptreact",
          "tsx",
        },
      })
    end,
  },
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      local npairs = require("nvim-autopairs")
      local Rule = require("nvim-autopairs.rule")
      local brackets = { { "(", ")" }, { "[", "]" }, { "{", "}" } }

      npairs.setup({ check_ts = true, ts_config = { jsx = { "javascript" }, tsx = { "typescript" } } })
      npairs.add_rules({
        Rule(" ", " "):with_pair(function(opts)
          local pair = opts.line:sub(opts.col - 1, opts.col)
          return vim.tbl_contains({ "()", "[]", "{}" }, pair)
        end),
      })
      for _, punct in pairs({ ",", ";" }) do
        npairs.add_rules({
          Rule("", punct)
              :with_move(function(opts)
                return opts.char == punct
              end)
              :with_pair(function()
                return false
              end)
              :with_del(function()
                return false
              end)
              :with_cr(function()
                return false
              end)
              :use_key(punct),
        })
      end
    end,
  },
}
