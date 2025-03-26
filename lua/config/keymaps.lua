-- 设置引导键
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap

-- ----------------- 插入模式下的配置 -----------------
keymap.set("i", "jj", "<ESC>`^")                            -- i 表示插入模式下，jj 表示用 jj 来替换 ESC 键

-- ----------------- 视觉模式下的配置 -----------------
-- 单行或多行移动: 选中后大写的 JK 来上下移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")


-- ----------------- 普通模式下的配置 -----------------
keymap.set("n", "<leader>n", ":set number!<CR>", { noremap = true, silent = true, desc = 'Toggle Number Display' })
keymap.set("n", "<leader>p", ":set paste!<CR>", { noremap = true, silent = true, desc = 'Paste' })
keymap.set("n", "<leader>qq", ":q<CR>", { noremap = true, silent = true, desc = 'Quit' })
keymap.set("n", "<leader>qa", ":qa<CR>", { noremap = true, silent = true, desc = 'Quit All' })
keymap.set("n", "<leader>ww", ":w<CR>", { noremap = true, silent = true, desc = 'Write' })
keymap.set("n", "<leader>wa", ":wa<CR>", { noremap = true, silent = true, desc = 'Write All' })
keymap.set("n", "<leader>wq", ":wq<CR>", { noremap = true, silent = true, desc = 'Write And Quit' })
keymap.set("n", "<leader>hh", ":set hlsearch!<CR>", { noremap = true, silent = true, desc = 'Toggle Highlight Search' })
keymap.set("n", "<leader>sv", ":vs<CR>", { noremap = true, silent = true, desc = 'Virtical Split' })
keymap.set("n", "<leader>sp", ":sp<CR>", { noremap = true, silent = true, desc = 'Horizontal Split' })
keymap.set("n", "<leader>t", ":sp | terminal<CR>", { noremap = true, silent = true, desc = 'Open Termial Vertical' })
keymap.set("n", "<leader>vt", ":vsp | terminal<CR>", { noremap = true, silent = true, desc = 'Open Termianl Horizontal' })
keymap.set("n", "<leader>wr", ":set wrap!<CR>", { noremap = true, silent = true, desc = 'Toggle Wrap' })
keymap.set("n", "<leader>U", "gUaw", { noremap = true, silent = true, desc = 'To Upper Case' })
keymap.set("n", "<leader>u", "guaw", { noremap = true, silent = true, desc = 'To Lower Case' })
keymap.set("n", "U", "<C-r>", { noremap = true, silent = true, desc = 'Redo' })

-- 窗口跳转 --
keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
keymap.set("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
keymap.set("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })

