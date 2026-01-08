return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    opts = {
        actions = {
            open_file = {
                quit_on_open = true,            -- 打开文件时, 自动关闭导航栏
            }
        }
    },
    keys = {
        { "<leader>g", "<cmd>NvimTreeToggle<cr>", desc = "Toggle NvimTree" },
    },
}
