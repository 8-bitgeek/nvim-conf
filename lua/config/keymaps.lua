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
keymap.set("n", "<leader>n", ":set number!<CR>", { noremap = true, silent = true })             -- 关闭搜索高亮
keymap.set("n", "<leader>p", ":set paste!<CR>", { noremap = true, silent = true })              -- 关闭搜索高亮
keymap.set("n", "<leader>g", ":NvimTreeToggle<CR>", { noremap = true, silent = true })	        -- 打开/关闭 nvim-tree
keymap.set("n", "<leader>q", ":q<CR>", { noremap = true, silent = true })	        -- 打开/关闭 nvim-tree
keymap.set("n", "<leader>qa", ":qa<CR>", { noremap = true, silent = true })	        -- 打开/关闭 nvim-tree
keymap.set("n", "<leader>w", ":w<CR>", { noremap = true, silent = true })	        -- 打开/关闭 nvim-tree
keymap.set("n", "<leader>wq", ":wq<CR>", { noremap = true, silent = true })	        -- 打开/关闭 nvim-tree
keymap.set("n", "<leader>wqa", ":wqa<CR>", { noremap = true, silent = true })	        -- 打开/关闭 nvim-tree
keymap.set("n", "<leader>hl", ":set hlsearch!<CR>", { noremap = true, silent = true })	        -- 打开/关闭 nvim-tree
keymap.set("n", "<leader>sv", ":vs<CR>", { noremap = true, silent = true })                     -- 水平分屏
keymap.set("n", "<leader>sh", ":sp<CR>", { noremap = true, silent = true })                     -- 垂直分屏
keymap.set("n", "<leader>sc", "<C-w>c", { noremap = true, silent = true })                      -- 关闭当前窗口
keymap.set("n", "<leader>so", "<C-w>o", { noremap = true, silent = true })                      -- 关闭其它窗口
keymap.set("n", "<leader>t", ":sp | terminal<CR>", { noremap = true, silent = true })           -- 下方打开 terminal
keymap.set("n", "<leader>vt", ":vsp | terminal<CR>", { noremap = true, silent = true })         -- 右侧打开 terminal
keymap.set("n", "<leader>bc", ":tabclose<CR>", { noremap = true, silent = true })               -- 关闭当前 buffer
keymap.set("n", "<leader>w", ":set wrap!<CR>", { noremap = true, silent = true })               -- 自动换行

-- 窗口跳转 --
keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
keymap.set("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
keymap.set("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })

-- tab 跳转
keymap.set("n", "<leader>h", ":BufferLineCyclePrev<CR>")        -- 切换到上一个标签页
keymap.set("n", "<leader>l", ":BufferLineCycleNext<CR>")        -- 切换到下一个标签页
