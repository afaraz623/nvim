local keymap = vim.keymap -- for conciseness

-- keep cursor centered when jumping pg up and down
keymap.set("n", "<c-d>", "<c-d>zz", { noremap = true, silent = true })
keymap.set("n", "<c-u>", "<c-u>zz", { noremap = true, silent = true })

-- move highlighted text up and down
keymap.set("v", "<m-j>", ":m '>+1<cr>gv=gv")
keymap.set("v", "<m-k>", ":m '<-2<cr>gv=gv")

-- keep yanked text in buffer
keymap.set("x", "<leader>p", "\"_dp")

-- adjust indentation while preserving the visual selection
keymap.set("x", ">", [[>gv]], { noremap = true, silent = true })
keymap.set("x", "<", [[<gv]], { noremap = true, silent = true })

-- do nothing when leader is pressed alone
keymap.set({ "n", "v" }, "<space>", "<nop>", { silent = true })

-- dealing with word wrap
keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- get out of insert mode 
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- diagnostic keymaps
keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'go to previous diagnostic message' })
keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'go to next diagnostic message' })
keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'open floating diagnostic message' })
keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'open diagnostics list' })
