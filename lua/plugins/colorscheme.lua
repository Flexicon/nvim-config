-- Configure LazyVim colorscheme
return {
  -- add colorscheme plugin
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

  -- Configure LazyVim to use said colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
