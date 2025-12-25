return {
  "nvim-mini/mini.animate",
  event = "VeryLazy",
  version = "*",
  config = function()
    require("mini.animate").setup({
      open = {
        enable = false,
      },
      close = {
        enable = false,
      },
    })
  end,
}
