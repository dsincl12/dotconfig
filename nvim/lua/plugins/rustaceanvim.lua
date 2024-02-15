return {
  "mrcjkb/rustaceanvim",
  version = "^4",
  ft = { "rust" },
  dependencies = "neovim/nvim-lspconfig",
  config = function()
    vim.g.rustaceanvim = {
      server = {
        on_attach = function(_client, bufnr)
          vim.lsp.inlay_hint(bufnr, true)
        end,
      },
    }
  end,
}
