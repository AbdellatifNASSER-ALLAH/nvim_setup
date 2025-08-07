return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup {}
		-- Add keymap to toggle the tree
		vim.keymap.set("n", "<leader>t", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle File Tree" })
	end,
}
