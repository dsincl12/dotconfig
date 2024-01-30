return {
  "folke/noice.nvim",
  opts = {
    presets = {
      bottom_search = false,
    },
    views = {
      cmdline_popup = {
        position = {
          row = "50%",
          col = "50%",
        },
      },
    },
    routes = {
      {
        filter = {
          event = "msg_show",
          any = {
            { find = "%dL" },
            { find = "%d line" },
            { find = "%d lines" },
            { find = "%d more line" },
            { find = "%d more lines" },
            { find = "%d change" },
            { find = "%d fewer" },
          },
        },
      },
    },
  },
}
