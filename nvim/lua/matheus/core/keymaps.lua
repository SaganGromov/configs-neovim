vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness
-- Remap dd to use the black hole register, so it doesn't copy the deleted line
vim.keymap.set("n", "dd", [["_dd]], { noremap = true, silent = true })
-- Save and compile the current .tex file with pdflatex
--[[ vim.api.nvim_set_keymap("n", "<leader>;;", ":w<CR>:!pdflatex %<CR>", { noremap = true, silent = true }) ]]

-- vim.api.nvim_set_keymap(
--   "n",
--   "<leader>;;",
--   ":w<CR>:!pdflatex % && xdg-open %:r.pdf<CR>",
--   { noremap = true, silent = true }
-- )

-- vim.api.nvim_set_keymap(
--   "n",
--   "<leader>;;",
--   ":w<CR>:silent !pdflatex % > /dev/null 2>&1 && xdg-open %:r.pdf &<CR>",
--   { noremap = true, silent = true }
-- )

-- Save and compile the current .tex file with pdflatex
--[[ vim.api.nvim_set_keymap("n", "<leader>;;", ":w<CR>:!pdflatex %<CR>", { noremap = true, silent = true }) ]]

vim.api.nvim_set_keymap(
  "n",
  "<leader>;;",
  ":w<CR>:silent !pdflatex % > /dev/null 2>&1<CR>",
  { noremap = true, silent = true }
)

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- Jump to the next snippet position or expand snippet
vim.api.nvim_set_keymap(
  "i",
  "<Tab>",
  [[luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>']],
  { expr = true, silent = true }
)
vim.api.nvim_set_keymap("s", "<Tab>", [[<cmd>lua require'luasnip'.jump(1)<CR>]], { silent = true })

-- Jump to the previous snippet position
vim.api.nvim_set_keymap("i", "<S-Tab>", [[<cmd>lua require'luasnip'.jump(-1)<CR>]], { silent = true })
vim.api.nvim_set_keymap("s", "<S-Tab>", [[<cmd>lua require'luasnip'.jump(-1)<CR>]], { silent = true })
