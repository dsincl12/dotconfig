return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      lexical = {
        mason = false,
        filetypes = {
          "elixir",
          "eelixir",
          "heex",
        },
        root_dir = function(fname)
          local util = require("lspconfig.util")
          return util.find_git_ancestor(fname) or util.root_pattern("mix.exs")(fname) or vim.loop.os_homedir()
        end,
        cmd = { vim.loop.os_homedir() .. "/.lexical/_build/dev/package/lexical/bin/start_lexical.sh" },
        settings = {},
      },
    },
  },
  setup = {
    -- lexical = function(_, opts)
    --   opts.flags = {
    --     debounce_text_changes = 150,
    --     allow_incremental_sync = false,
    --   }
    -- end,
  },
}
