require("conform").setup({
  formatters_by_ft = {
    c = { "clang-format" },
  },
})

return {
  {
    "stevearc/conform.nvim",
    opts = {},
  },
}
