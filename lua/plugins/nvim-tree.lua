return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup {
			view = {
				side = "left",
				width = 30,
			},
			sync_root_with_cwd = true,
			respect_buf_cwd = true,
			git = { ignore = false},
		}

		vim.keymap.set("n", "<leader>t", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle File Tree" })
	end,
}
