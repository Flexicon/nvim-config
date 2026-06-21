return {
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        -- Keep Markdown editing quiet by disabling markdownlint by default.
        markdown = {},
        ["markdown.mdx"] = {},
      },
    },
  },
}
