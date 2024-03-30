return {
  {
    "tpope/vim-fugitive"
  },
  {
    "lewis6991/gitsigns.nvim",

    config = function()
      require("gitsigns").setup()

      --set keymap
      vim.keymap.set("n", "<Leader>gp", ":Gitsigns preview_hunk<CR>", {})
    end
  }
}
