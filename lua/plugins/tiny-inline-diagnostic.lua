
return {
  {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "VeryLazy",  -- Or "LspAttach" if preferred
    priority = 1000,      -- Load early
    config = function()
      require("tiny-inline-diagnostic").setup()
      vim.diagnostic.config({ virtual_text = false })  -- Disable native virtual text if needed
    end,
  }
}
