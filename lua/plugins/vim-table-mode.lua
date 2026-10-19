return {
  "dhruvasagar/vim-table-mode",
  cmd = { "TableModeToggle", "TableAddComment" },
  ft = { "markdown", "vimwiki", "text" },
  config = function()
    vim.g.table_mode_corner = "|"
  end,
}
