local frontend_formatters = { "biome", "prettier", stop_after_first = true }

return {
  -- Configure conform.nvim to use ruff for Python formatting
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        javascript = frontend_formatters,
        javascriptreact = frontend_formatters,
        typescript = frontend_formatters,
        typescriptreact = frontend_formatters,
        css = frontend_formatters,
        html = frontend_formatters,
        json = frontend_formatters,
        yaml = { "prettier" },
        python = { "ruff_format" },
      },
    },
  },

  -- Ensure ruff is installed via Mason
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "ruff",
      },
    },
  },
}
