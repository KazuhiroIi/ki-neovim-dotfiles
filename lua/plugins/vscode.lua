return {
  {
    "Mofiqul/vscode.nvim",
    config = function()
      require("vscode").setup({
        style = "dark",
        transparent = false,
      })
      vim.cmd.colorscheme("vscode")
    end,
  },
}
