return {
  "folke/tokyonight.nvim",
  lazy = false,           -- load immediately
  priority = 1000,        -- load before other plugins
  opts = {
    style = "moon",      -- or "moon", "night", "day"
    transparent = true,   -- ✅ Enable transparency
    styles = {
      sidebars = "transparent",
      floats = "transparent",
    },
  },
  config = function(_, opts)
    require("tokyonight").setup(opts)
    vim.cmd.colorscheme("tokyonight")
  end,
}
