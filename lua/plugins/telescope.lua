return {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    cmd = "Telescope",                                                                      -- 让 :Telescope 也能触发 lazy load
    keys = {
        { "<leader>o",  "<cmd>Telescope find_files<cr>", desc = "Find Files" },             -- 查找文件
        { "<leader>fg", "<cmd>Telescope live_grep<cr>",  desc = "Live Grep" },              -- 模糊搜索
        { "<leader>fb", "<cmd>Telescope buffers<cr>",    desc = "Find Buffers" },           -- 查找缓冲区
        { "<leader>fh", "<cmd>Telescope help_tags<cr>",  desc = "Help Tags" },              -- 查找帮助文档
        { "<leader>fm", "<cmd>Telescope marks<cr>",      desc = "Find Marks" },             -- 查找 marks
        { "<leader>fr", "<cmd>Telescope oldfiles<cr>",   desc = "Find Recent Files" },      -- 查找 Recent Files
        { "<leader>gr", "<cmd>Telescope lsp_references<cr>",   desc = "Lsp References" },   -- 查找 References
    },
    opts = {
        defaults = {
            layout_strategy = "horizontal",
            sorting_strategy = "ascending",
            winblend = 0,
        },
        pickers = {
            find_files = {
                -- theme = "dropdown",
                hidden = true,
            }
        },
    }
}
