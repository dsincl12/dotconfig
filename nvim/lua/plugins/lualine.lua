return {
  "nvim-lualine/lualine.nvim",
  opts = function()
    return {
      -- lualine_a = { "mode" },
      -- lualine_b = { "branch", "diff", "diagnostics" },
      -- lualine_c = { "filename" },
      -- lualine_x = { "encoding", "fileformat", "filetype" },
      -- lualine_y = { "progress" },
      lualine_z = { "location" },
    }
  end,
}
