return {
  "nvim-telescope/telescope.nvim",
  config = {
    defaults = {
      mappings = {
        i = {
          ["<C-k>"] = require("telescope.actions").move_selection_previous,
          ["<C-j>"] = require("telescope.actions").move_selection_next,
          ["<C-q>"] = require("telescope.actions").send_selected_to_qflist + require("telescope.actions").open_qflist,
        },
      },
      file_ignore_patterns = {
        ".git",
        "_build",
        ".elixir_ls",
        ".elixir-tools",
        ".lexical",
        "deps",
        "vendor",
        "node_modules",
        "packer_compiled.lua",
      },
    },
  },
}
