return {
  -- Mason
  {
    "williamboman/mason.nvim",
    event = "VeryLazy",
    config = function()
      require("mason").setup()
    end,
  },

  -- Lspconfig
  {
    "williamboman/mason-lspconfig.nvim",
    event = "VeryLazy",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "ts_ls",
          "html",
          "cssls",
          "tailwindcss",
          "emmet_ls",
          "jsonls",
          "gopls",
        },
        automatic_installation = true,
      })
    end,
  },

  {
    "neovim/nvim-lspconfig",
    event = "VeryLazy",
    opts = {
      autoformat = true,
    },
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- Lua
      vim.lsp.config("lua_ls", {
        capabilities = capabilities,
      })

      -- TypeScript
      vim.lsp.config("ts_ls", {
        capabilities = capabilities,
        init_options = {
          preferences = {
            importModuleSpecifierPreference = "non-relative",
            importModuleSpecifierEnding = "minimal",
          },
        },
      })

      -- HTML
      vim.lsp.config("html", {
        capabilities = capabilities,
      })

      -- CSS
      vim.lsp.config("cssls", {
        capabilities = capabilities,
      })

      -- TailwindCSS
      vim.lsp.config("tailwindcss", {
        capabilities = capabilities,
      })

      -- Emmet
      vim.lsp.config("emmet_ls", {
        capabilities = capabilities,
      })

      -- JSON
      vim.lsp.config("jsonls", {
        capabilities = capabilities,
      })

      vim.lsp.config("gopls", {
        capabilities = capabilities,
      })

      -- Go
      vim.lsp.config("gopls", {
        capabilities = capabilities,
        settings = {
          gopls = {
            analyses = {
              unusedparams = true,
              shadow = true,
            },
            staticcheck = true,
          },
        },
      })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Show hover docs" })
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
