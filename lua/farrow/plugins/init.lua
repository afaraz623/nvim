return {
  -- Plugins with no complex configurations are installed here otherwise, look in a specific plugin folder.

  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    config = function()
      -- globally set theme
      vim.cmd.colorscheme("rose-pine")

      -- set number line colour to white
      vim.cmd([[highlight LineNr ctermfg=white guifg=white]])
    end,
  },
  {
    -- tmux navigation
    "christoomey/vim-tmux-navigator",
  },
  {
    -- plugin for auto completeing brackets quotations etc etc
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
  },
  {
    -- adds comments functionality
    "numToStr/Comment.nvim",
    event = { "BufReadPre", "BufNewFile" },

    config = function()
      -- import comment plugin safely
      local comment = require("Comment")

      -- enabling comment and changing default binding to ?
      comment.setup({
        opleader = { line = "?" },
      })
    end,
  },
  {
    -- this allows me to have many many undos
    "mbbill/undotree",

    -- set keymaps
    vim.keymap.set("n", "<leader>u", "<cmd>UndotreeToggle<cr>", { desc = "Toggle UndoTree" }),
  },
  {
    -- a pretty input box maker
    "stevearc/dressing.nvim",
    event = "VeryLazy",
  },
}
