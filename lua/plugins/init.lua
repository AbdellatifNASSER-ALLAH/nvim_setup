return {
	-- Better syntax highlighting and code parsing
	{"nvim-treesitter/nvim-treesitter", branch = 'master', lazy = false, build = ":TSUpdate"},

	-- Git signs in the gutter
	{ "lewis6991/gitsigns.nvim" },

	-- Commenting helper
	{ "numToStr/Comment.nvim", config = true },

	-- Snippets
	{ "L3MON4D3/LuaSnip" },
	{ "saadparwaiz1/cmp_luasnip" },
	{ "rafamadriz/friendly-snippets" },

}
