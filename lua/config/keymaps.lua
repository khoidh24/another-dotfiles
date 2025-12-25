local keymap = vim.keymap
local opts = { noremap = true, silent = true }
vim.g.mapleader = " "

-- =====================
-- Tab Management
-- =====================
keymap.set("n", "te", ":tabedit<CR>", opts)      -- new tab
keymap.set("n", "<Tab>", ":tabnext<CR>", opts)   -- next tab
keymap.set("n", "<S-Tab>", ":tabprev<CR>", opts) -- previous tab
keymap.set("n", "tw", ":tabclose<CR>", opts)     -- close tab

-- =====================
-- Window Management
-- =====================
keymap.set("n", "ss", ":split<CR>", opts)  -- horizontal split
keymap.set("n", "sv", ":vsplit<CR>", opts) -- vertical split

-- =====================
-- Move between windows
-- =====================
keymap.set("n", "sh", "<C-w>h", opts)
keymap.set("n", "sk", "<C-w>k", opts)
keymap.set("n", "sj", "<C-w>j", opts)
keymap.set("n", "sl", "<C-w>l", opts)

-- =====================
-- Resize windows
-- =====================
keymap.set("n", "<C-S-h>", "<C-w><", opts)
keymap.set("n", "<C-S-l>", "<C-w>>", opts)
keymap.set("n", "<C-S-k>", "<C-w>+", opts)
keymap.set("n", "<C-S-j>", "<C-w>-", opts)

-- =====================
-- Undercurl (visual)
-- =====================
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- =====================
-- Toggle relative number
-- =====================
vim.keymap.set("n", "<leader>r", function()
  if vim.wo.relativenumber then
    vim.wo.relativenumber = false
    vim.notify("Relative number OFF", vim.log.levels.INFO)
  else
    vim.wo.relativenumber = true
    vim.notify("Relative number ON", vim.log.levels.INFO)
  end
end, { desc = "Toggle relative number" })

vim.keymap.set("n", "q", "@q", { noremap = true, silent = true })
