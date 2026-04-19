return {
	"akinsho/bufferline.nvim",
	lazy = false,
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("bufferline").setup()
		vim.keymap.set("n", "gb", ":BufferLineCycleNext<CR>", { silent = true })
		vim.keymap.set("n", "gB", ":BufferLineCyclePrev<CR>", { silent = true })
	end,
}
