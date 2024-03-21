return {
	"nvim-tree/nvim-tree.lua",
	config = function()
		vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

		require("nvim-tree").setup({
			git = {
				enable = true,
				ignore = false,
				timeout = 500,
			},
		})
	end,
}
