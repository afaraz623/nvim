return {
  "numToStr/Comment.nvim",
  event = { "BufReadPre", "BufNewFile" },

  config = function()
    -- import comment plugin safely
    local comment = require("Comment")

    -- enabling comment and changing default binding to ?
    comment.setup({
      opleader = {line = '?'},
    })
  end,
}
