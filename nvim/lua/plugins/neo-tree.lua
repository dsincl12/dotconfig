return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  init = function()
    -- disable opening Neo-tree by default
  end,
  opts = {
    window = {
      width = 50,
    },
    buffers = {
      follow_current_file = {
        enabled = true,
      },
    },
    filesystem = {
      follow_current_file = {
        enabled = true,
      },
      filtered_items = {
        visible = false,
        hide_dotfiles = false,
        hide_gitignored = false,
        show_hidden_count = false,
        hide_by_name = {
          ".git",
          ".elixir_ls",
          ".elixir-tools",
          ".lexical",
          "_build",
          "deps",
        },
        never_show = {
          ".DS_Store",
        },
      },
    },
  },
}
