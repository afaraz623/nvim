return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				python = { "isort", "black" },
				json = { "prettier" },
				yaml = { "prettier" },
				lua = { "stylua" },
				cpp = { "clang-format" },
				c = { "clang-format" },
				cmake = { "cmake_format" },
			},
			format_on_save = {
				lsp_fallback = true,
				async = false,
				timeout_ms = 500,
			},
		})

		-- set keymap
		vim.keymap.set({ "n", "v" }, "<leader>df", function()
			require("conform").format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 500,
			})
		end, { desc = "Format file or range (in visual mode)" })
	end,
}
