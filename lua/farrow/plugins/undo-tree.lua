return {
  'mbbill/undotree',

  -- set keymaps
  vim.keymap.set("n", "<leader>u", "<cmd>UndotreeToggle<cr>", { desc = "Toggle UndoTree" })
}
