return {
	"github/copilot.vim",
	init = function()
		-- Disable default Tab mapping so we can use C-J
		vim.g.copilot_no_tab_map = true
		vim.g.copilot_enabled = 0
	end,
	config = function()
		-- Keybinding to accept Copilot inline suggestion
		vim.keymap.set('i', '<C-J>', 'copilot#Accept("\\<CR>")', {
			expr = true,
			replace_keycodes = false
		})

		-- Toggle Copilot
		vim.keymap.set('n', '<leader>cp', function()
			if vim.g.copilot_enabled == 0 then
				vim.cmd('Copilot enable')
				vim.notify("Copilot Enabled")
			else
				vim.cmd('Copilot disable')
				vim.notify("Copilot Disabled")
			end
		end, { desc = "Toggle Copilot" })
	end,
}

