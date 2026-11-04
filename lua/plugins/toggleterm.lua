return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      vim.api.nvim_create_autocmd("TermOpen", {
        pattern = "term://*",
        callback = function()
          local opts = { buffer = 0 }
          vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
        end,
      })
      require("toggleterm").setup({
        size = 20,
        open_mapping = [[<leader>tt]], -- toggle terminal
        direction = "float", -- horizontal, vertical, float
        float_opts = {
          border = "curved", -- border style (single, double, shadow, curved)
        },
      })
    end,
    keys = {
      {
        "<leader>th",
        "<cmd>ToggleTerm direction=horizontal<cr>",
        desc = "Horizontal Terminal",
      },
      {
        "<leader>tf",
        "<cmd>ToggleTerm direction=float<cr>",
        desc = "Floating Terminal",
      },
      {
        "<leader>tn",
        "<cmd>ToggleTerm direction=tab<cr>",
        desc = "Tab Terminal",
      },
      {
        "<leader>tv",
        "<cmd>ToggleTerm direction=vertical<cr>",
        desc = "vertical Terminal",
      },
    },
  },
}
