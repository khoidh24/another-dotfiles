return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local auto_theme_custom = require("lualine.themes.onedark")
    auto_theme_custom.normal.c.bg = "none"
    require("lualine").setup({
      options = {
        theme = auto_theme_custom,
        ignore_focus = { "neo-tree" },
        disabled_filetypes = { statusline = { "neo-tree" }, winbar = {} },
        globalstatus = false,
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = {
          {
            "filename",
            symbols = {
              modified = "",
              readonly = "",
              unnamed = "󰎜 NaN",
              new = "󰎜",
            },
          },
        },
        lualine_x = {
          "encoding",
          "fileformat",
          { "filetype", colored = true, icon = { align = "left" } },
        },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
    })
  end,
}
