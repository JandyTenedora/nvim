return {
	"mfussenegger/nvim-jdtls",
	ft = { "java" },
	config = function()
		local jdtls = require("jdtls")

		local function get_config()
			local workspace = vim.fn.expand("~/.local/share/eclipse/") .. vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
			return {
				cmd = { "jdtls", "-data", workspace },
				root_dir = vim.fs.dirname(
					vim.fs.find({ "gradlew", "mvnw", "pom.xml", "build.gradle", ".git" }, { upward = true })[1]
				),
				capabilities = require("cmp_nvim_lsp").default_capabilities(),
				settings = {
					java = {
						configuration = {
							runtimes = {
								{ name = "JavaSE-17", path = os.getenv("JAVA_HOME") or "" },
							},
						},
					},
				},
			}
		end

		local group = vim.api.nvim_create_augroup("nvim-jdtls", { clear = true })
		vim.api.nvim_create_autocmd("FileType", {
			pattern = "java",
			callback = function()
				jdtls.start_or_attach(get_config())
			end,
			group = group,
		})
	end,
}
