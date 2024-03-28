-- This file does not include plugin specific keymaps. ONLY custom keymaps that are not dependent on plugins.
-- For plugin specific keymaps, look in the plugins config itself.

-- keep cursor centered when jumping pg up and down
vim.keymap.set("n", "<c-d>", "<c-d>zz", { noremap = true, silent = true })
vim.keymap.set("n", "<c-u>", "<c-u>zz", { noremap = true, silent = true })

-- move highlighted text up and down
vim.keymap.set("v", "<m-j>", ":m '>+1<cr>gv=gv")
vim.keymap.set("v", "<m-k>", ":m '<-2<cr>gv=gv")

-- keep yanked text in buffer
vim.keymap.set("x", "<leader>p", "\"_dp")

-- adjust indentation while preserving the visual selection
vim.keymap.set("x", ">", [[>gv]], { noremap = true, silent = true })
vim.keymap.set("x", "<", [[<gv]], { noremap = true, silent = true })

-- do nothing when leader is pressed alone
vim.keymap.set({ "n", "v" }, "<space>", "<nop>", { silent = true })

-- dealing with word wrap
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- open netrw
vim.keymap.set("n", "<Leader>dd", ":Lexplore %:p:h<CR>")
vim.keymap.set("n", "<Leader>da", ":Lexplore<CR>")


-- get out of insert mode 
vim.keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "go to previous diagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "go to next diagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "open floating diagnostic message" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "open diagnostics list" })
