return {
	'nvimdev/lspsaga.nvim',
	dependencies = {
		'nvim-treesitter/nvim-treesitter',
		'nvim-tree/nvim-web-devicons',
	},
	config = function()
		require('lspsaga').setup({
			ui = {
				border = 'rounded',
			},
			hover = {
				-- This helps with the "Markdown" look by keeping things structured
				max_width = 0.6,
				open_link = 'gx',
			},
			lightbulb = {
				enable = false,
			},
		})
		-- Force the hover window to HIDE the markdown symbols
		vim.api.nvim_create_autocmd("FileType", {
			pattern = "markdown",
			callback = function()
				-- 2 hides symbols; 3 hides symbols and collapses space
				vim.opt_local.conceallevel = 2 
			end,
		})
		-- The keymap MUST be inside the config function or in the 'keys' table
		-- so it only loads once the plugin is ready.
		vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", { silent = true })
	end,
}
