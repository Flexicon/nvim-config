-- Configure LazyVim colorscheme
return {
  -- add colorscheme plugin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    -- Pinned to a specific commit to avoid breaking changes around the `palettes.get` function.
    -- Can unpin once this commit is included in a release:
    -- https://github.com/catppuccin/nvim/commit/30fa4d122d9b22ad8b2e0ab1b533c8c26c4dde86
    version = "v1.11.0",
  },

  -- Configure LazyVim to use said colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
