-- Installs VenvSelector for selecting Python virtual environments https://github.com/linux-cultist/venv-selector.nvim
return {
  -- Setup Nvim DAP for Python using uv under the hood
  {
    "mfussenegger/nvim-dap",
    config = function()
      local dap_python = require("dap-python")
      dap_python.setup("uv")
    end,
  },
  -- Setup key group for virtualenv commands
  {
    "folke/which-key.nvim",
    opts = {
      spec = {
        { "<leader>v", group = "virtualenv" },
      },
    },
  },
  -- Installs VenvSelector for selecting Python virtual environments
  {
    "linux-cultist/venv-selector.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
      "mfussenegger/nvim-dap",
      "mfussenegger/nvim-dap-python",
      { "nvim-telescope/telescope.nvim", branch = "0.1.x", dependencies = { "nvim-lua/plenary.nvim" } },
    },
    lazy = false,
    branch = "regexp", -- This is the regexp branch, use this for the new version
    keys = {
      { "<leader>vs", "<cmd>VenvSelect<cr>", desc = "Select VirtualEnv" },
    },
    opts = {},
  },
}
