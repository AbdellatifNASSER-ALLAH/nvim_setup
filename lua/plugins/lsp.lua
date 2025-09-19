-- lua/plugins/lsp.lua
return {
  -- Mason and LSP setup
  { "williamboman/mason.nvim", build = ":MasonUpdate" },
  { "williamboman/mason-lspconfig.nvim", dependencies = { "williamboman/mason.nvim" } },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/cmp-nvim-lsp", -- for LSP completion capabilities
    },
    config = function()
      -- Set up Mason
      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = { "clangd" },
      })

      -- Completion capabilities
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- Define clangd config using new API
      vim.lsp.config.clangd = {
        cmd = { "clangd", "--inlay-hints=false" },
        capabilities = capabilities,
        -- you can add on_attach, root_dir, etc. here if needed
      }

      -- Enable clangd
      vim.lsp.enable({ "clangd" })
    end,
  },
}

