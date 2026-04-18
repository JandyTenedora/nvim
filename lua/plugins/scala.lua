return {
	"scalameta/nvim-metals",
	dependencies = { "nvim-lua/plenary.nvim" },
	ft = { "scala", "sbt", "java" },
	config = function()
		local metals_config = require("metals").bare_config()
		metals_config.capabilities = require("cmp_nvim_lsp").default_capabilities()
		metals_config.settings = {
			showImplicitArguments = true,
			showImplicitConversionsAndClasses = true,
			showInferredType = true,
		}

		local group = vim.api.nvim_create_augroup("nvim-metals", { clear = true })
		vim.api.nvim_create_autocmd("FileType", {
			pattern = { "scala", "sbt", "java" },
			callback = function()
				require("metals").initialize_or_attach(metals_config)
			end,
			group = group,
		})
	end,
}
