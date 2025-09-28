return {
  {
    "neovim/nvim-lspconfig",
    optional = true,
    opts = {
      servers = {
        rubocop = {
          mason = false, -- don't let Mason manage this one
          cmd = { "bundle", "exec", "rubocop", "--lsp", "--no-server" },
        },
      },
    },
  },
}
