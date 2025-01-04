return {
	{
		"mfussenegger/nvim-dap",
		init = function()
			vim.keymap.set("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", {})
			local widgets = require("dap.ui.widgets")
			local sidebar = widgets.sidebar(widgets.scopes)
      vim.keymap.set("n", "<leader>dus", function() sidebar.toggle() end, {})
		end,
	},
	{
		"leoluz/nvim-dap-go",
		ft = "go",
		dependencies = "mfussenegger/nvim-dap",
		config = function(_, opts)
			local dap_go = require("dap-go").setup(opts)
			vim.keymap.set("n", "<leader>dgt", function() dap_go.debug_test() end, {})
			vim.keymap.set("n", "<leader>dgl", function() dap_go.debug_last() end, {})
		end,
	},
}
