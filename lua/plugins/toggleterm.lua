
return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup{
      size = 20,
      open_mapping = [[<C-\>]], -- default toggle
      direction = "float",      -- make it floating
      float_opts = {
        border = "curved",      -- curved | single | double | shadow
      },
    }
  end
}
