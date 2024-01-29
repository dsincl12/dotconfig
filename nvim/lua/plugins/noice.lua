return {
  "folke/noice.nvim",
  opts = function(_, opts)
    opts.routes = {
      { -- filter write messages "xxxL, xxxB""
        filter = {
          event = "msg_show",
          find = "%dL",
        },
        opts = { skip = true },
      },
      { -- filter lines yanked etc
        filter = {
          event = "msg_show",
          find = "%d lines",
        },
        opts = { skip = true },
      },
      { -- filter more lines
        filter = {
          event = "msg_show",
          find = "%d more lines",
        },
        opts = { skip = true },
      },
      { -- filter more lines
        filter = {
          event = "msg_show",
          find = "%d change",
        },
        opts = { skip = true },
      },
      { -- filter more lines
        filter = {
          event = "msg_show",
          find = "%d fewer",
        },
        opts = { skip = true },
      },
    }
  end,
}
