return {
	"mfussenegger/nvim-lint",
	config = function()
		require("lint").linters_by_ft = {
			python = { "pylint" },
			golang = { "golangci_lint" },
			typescript = { "eslint_d" },
			javascript = { "eslint_d" },
			typescriptreact = { "eslint_d" },
			javascriptreact = { "eslint_d" },
			lua = { "luacheck" },
			json = { "jsonlint" },
			yaml = { "yamllint" },
			markdown = { "markdownlint" },
			sh = { "shellcheck" },
		}
	end,
}
