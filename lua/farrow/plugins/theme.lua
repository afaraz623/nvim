return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    -- vim.cmd.colorscheme "catppuccin-mocha"
    vim.cmd.colorscheme "catppuccin"

    -- set number line colour to white
    vim.cmd([[highlight LineNr ctermfg=white guifg=white]])
    end,
}

