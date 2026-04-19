return {
	{
		"kdheepak/lazygit.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		cmd = "LazyGit",
		config = function()
			vim.keymap.set("n", "<leader>lg", ":LazyGit<CR>")
		end,
	},
	{
		"sindrets/diffview.nvim",
		cmd = { "DiffviewOpen", "DiffviewFileHistory" },
		config = function()
			vim.keymap.set("n", "<leader>dv", ":DiffviewOpen<CR>")
			vim.keymap.set("n", "<leader>dh", ":DiffviewFileHistory<CR>")
		end,
	},
}
