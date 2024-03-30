return {
  {
    "tpope/vim-fugitive",

    config = function()
      -- set keymap
      vim.keymap.set("n", "<Leader>gt", "<cmd>Git<cr>", {})
      vim.keymap.set("n", "<Leader>ga", "<cmd>Git add .<cr>", {})
      vim.keymap.set("n", "<Leader>gs", "<cmd>Git status<cr>", {})
      vim.keymap.set("n", "<Leader>gp", "<cmd>Git push<cr>", {})
    end,
  },
  {
    "lewis6991/gitsigns.nvim",

    config = function()
      require("gitsigns").setup()

      --set keymap
      vim.keymap.set("n", "<Leader>gh", ":Gitsigns preview_hunk<CR>", {})
    end,
  },
}
