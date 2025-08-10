return {
	'akinsho/bufferline.nvim',
	version = "*",
	dependencies = {'nvim-tree/nvim-web-devicons'},
	config = function()
		require("bufferline").setup {
			options = {
				mode = "buffers",
				show_buffer_close_icons = false,
				show_close_icon = false,
				diagnostics = "nvim_lsp",
				show_buffer_close_icons = false,
				show_close_icon = false,
				always_show_bufferline = true,
			},
		}

		-- Buffer navigation
		vim.keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>", { desc = "Next buffer" })
		vim.keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>", { desc = "Previous buffer" })
	end,
}
