return {
  "christoomey/vim-tmux-navigator",
  lazy = false,
  keys = {
    { "<C-h>", "<cmd>TmuxNavigateLeft<cr>", desc = "Go to the left pane" },
    { "<C-j>", "<cmd>TmuxNavigateDown<cr>", desc = "Go to the lower pane" },
    { "<C-k>", "<cmd>TmuxNavigateUp<cr>", desc = "Go to the upper pane" },
    { "<C-l>", "<cmd>TmuxNavigateRight<cr>", desc = "Go to the right pane" },
  },
}
