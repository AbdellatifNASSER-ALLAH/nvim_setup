
return {
  -- Copilot Chat plugin
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      { "github/copilot.vim", enabled = true },
    },
    build = "make tiktoken",
    config = function()
      require("CopilotChat").setup({
        model = "gpt-4o",
        auto_insert_mode = true,
        window = {
          layout = "float",
          width = 120,
          height = 40,
          border = "rounded",
        },
      })

      -- Keybinding to open Copilot Chat
     -- vim.keymap.set("n", "<leader>cc", function()
     --   require("CopilotChat").open()
     -- end, { desc = "Open Copilot Chat" })
    end,
  },
}
