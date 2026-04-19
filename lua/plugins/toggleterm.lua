return {
	"akinsho/toggleterm.nvim",
	lazy = false,
	config = function()
		require("toggleterm").setup({
			size = 10,
			direction = "horizontal",
			shade_terminals = false,
		})
		vim.keymap.set("n", "<leader>tt", ":ToggleTerm<CR>", { silent = true })
		vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { silent = true })
	end,
}
