return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- enable mason and configure icons
		require("mason").setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		require("mason-lspconfig").setup({
			-- list of servers for mason to install
			ensure_installed = {
				"clangd",
				"rust_analyzer",
				"lua_ls",
				"pyright",
			},
			-- auto-install configured servers (with lspconfig)
			automatic_installation = true, -- not the same as ensure_installed
		})

		require("mason-tool-installer").setup({
			ensure_installed = {
				"prettier", -- yaml and json formatter
				"stylua", -- lua formatter
				"isort", -- python imports formatter
				"black", -- python formatter
				"clang-format", -- c/cpp formatter
				"gersemi", -- cmake formatter
				"pylint", -- python linter
			},
		})
	end,
}
