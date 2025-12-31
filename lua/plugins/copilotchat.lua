
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
			-- Disable Copilot default TAB mapping
			vim.g.copilot_no_tab_map = true
			-- Accept Copilot inline suggestion with Shift+Tab
			vim.keymap.set("i", "<S-Tab>", 'copilot#Accept("<CR>")', {
				expr = true,
				replace_keycodes = false,
				silent = true,
			})
			-- vim.keymap.set("n", "<leader>cc", function()
				--   require("CopilotChat").open()
				-- end, { desc = "Open Copilot Chat" })
			end,
		},
	}
