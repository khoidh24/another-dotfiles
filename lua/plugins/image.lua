return {
  "edluffy/image.nvim",
  event = "VeryLazy",
  config = function()
    require("image").setup()
  end,
}
