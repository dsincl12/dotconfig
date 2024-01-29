return {
  "nvim-treesitter/nvim-treesitter",
  config = {
    highlight = {
      enable = true,
    },
    indent = {
      enable = true,
    },
    autotag = {
      enable = true,
    },
    ensure_installed = {
      "go",
      "json",
      "javascript",
      "yaml",
      "html",
      "css",
      "markdown",
      "lua",
      "dockerfile",
      "elixir",
      "heex",
    },
    auto_install = true,
  },
}
