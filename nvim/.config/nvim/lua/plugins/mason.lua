local servers = {
	"lua_ls",
	"ts_ls",
	"eslint",
	"html",
	"cssls",
	"tailwindcss",
	"jsonls",
	"gopls",
	"yamlls",
	"dockerls",
	"docker_compose_language_service",
	"bashls",
	"vacuum",
	"buf_ls",
	"clangd",
}

return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = servers,
				automatic_installation = true,
			})
		end,
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		config = function()
			require("mason-tool-installer").setup({
				ensure_installed = {
					"prettierd",
					"gofumpt",
					"goimports",
					"eslint_d",
					"stylua",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			-- local capabilities = require("cmp_nvim_lsp").default_capabilities()

			-- Setup all servers
			for _, lsp in ipairs(servers) do
				vim.lsp.config[lsp] = {}
			end

			-- LSP Keymaps
			vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover Documentation" })
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename" })
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })
			vim.keymap.set("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Show Diagnostic" })
			vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Previous Diagnostic" })
			vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Next Diagnostic" })

			-- Format on save
			vim.api.nvim_create_autocmd("LspAttach", {
				callback = function(args)
					local client = vim.lsp.get_client_by_id(args.data.client_id)
					if client and client.supports_method("textDocument/formatting") then
						vim.api.nvim_create_autocmd("BufWritePre", {
							buffer = args.buf,
							callback = function()
								vim.lsp.buf.format({ bufnr = args.buf, async = false })
							end,
						})
					end
				end,
			})
		end,
	},
}
