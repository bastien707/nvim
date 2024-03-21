return { {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.6',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local telescope = require("telescope")
    local builtin = require("telescope.builtin")
    local actions = require("telescope.actions")

    vim.keymap.set("n", "<leader>ff", builtin.find_files, {})          -- find files
    vim.keymap.set("n", "<leader>fs", builtin.live_grep, {})           -- find string
    vim.keymap.set("n", "<leader>fg", builtin.git_files, {})           -- find git files
    vim.keymap.set("n", "<leader>fb", builtin.buffers, {})             -- find buffers
    vim.keymap.set("n", "<leader>fk", builtin.keymaps, {})             -- find keymaps
    vim.keymap.set("n", "<leader>fo", builtin.oldfiles, {})            -- find recents
    vim.keymap.set("n", "<leader>fr", builtin.lsp_references, {})      -- find where is used

    vim.keymap.set("n", "<leader>ds", builtin.lsp_document_symbols, {}) -- document symbols in current file
    vim.keymap.set("n", "<leader>ws", builtin.lsp_workspace_symbols, {}) -- workspace symbols

    telescope.setup({
      defaults = {
        mappings = {
          i = {
            -- allow navigation with J and K
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-j>"] = actions.move_selection_next,
          },
        },
      },
    })
  end,
},
  {
    -- telescope ui select
    'nvim-telescope/telescope-ui-select.nvim',
    config = function()
      require('telescope').setup ({
        extensions = {
          ['ui-select'] = {
            require('telescope.themes').get_dropdown{},
          }
        }
      })
      require('telescope').load_extension('ui-select')
    end,
  },

}
