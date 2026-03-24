return {
	"rebelot/kanagawa.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		vim.o.background = "dark"
		require("kanagawa").setup({
			theme = "dragon",
			background = { dark = "dragon", light = "dragon" },
		})
		vim.cmd([[colorscheme kanagawa]])
	end,
}
