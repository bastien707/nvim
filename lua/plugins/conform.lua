return {
	"stevearc/conform.nvim",
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				lua = { "stylua" },
				-- Conform will run multiple formatters sequentially
				javascript = { "prettierd" },
				typescript = { "prettierd" },
				typescriptreact = { "prettierd" },
				javascriptreact = { "prettierd" },
				html = { "prettierd" },
				css = { "prettierd" },
				yaml = { "prettierd" },
				json = { "prettierd" },
				markdown = { "prettierd" },
			},
			format_on_save = {
				lsp_fallback = true,
				async = false,
				timeout = 500,
			},
		})

		vim.keymap.set({ "n", "v" }, "<leader>mp", function() -- [M]ake [P]retty
			conform.format({
				lsp_fallback = true,
				async = false,
				timeout = 500,
			})
		end)
	end,
}
