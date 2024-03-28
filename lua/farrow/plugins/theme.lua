return {
  "rose-pine/neovim",
  name = "rose-pine",
  priority = 1000,
  config = function()

    -- globally set theme
    vim.cmd.colorscheme "rose-pine"

    -- set number line colour to white
    vim.cmd([[highlight LineNr ctermfg=white guifg=white]])
    end,
}
