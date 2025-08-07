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

      -- Set up LSP
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      lspconfig.clangd.setup({
        capabilities = capabilities,
        cmd = { "clangd", "--inlay-hints=false" },
      })
    end,
  },
}
