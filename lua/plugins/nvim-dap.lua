-- Setup Nvim DAP for Python using uv under the hood
return {
  "mfussenegger/nvim-dap",
  config = function()
    local dap_python = require("dap-python")
    dap_python.setup("uv")
  end,
}
