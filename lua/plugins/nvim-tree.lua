return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    opts = {
        actions = {
            open_file = {
                quit_on_open = false,            -- 打开文件时, 自动关闭导航栏(否)
            }
        }
    },
    keys = {
        { "<leader>g", "<cmd>NvimTreeToggle<cr>", desc = "Toggle NvimTree" },
    },
    config = function(_, opts)
        require("nvim-tree").setup(opts)

        -- 设置更清晰的文件颜色
        local function set_nvim_tree_hl()
            vim.api.nvim_set_hl(0, "NvimTreeNormal", {
                fg = "#ffffff",  -- 文件名颜色
                bg = "#1e2030",  -- 背景（可不写）
            })
            vim.api.nvim_set_hl(0, "NvimTreeNormalNC", {
                fg = "#ffffff",
                bg = "#1e2030",
            })
        end

        -- 立即执行一次
        set_nvim_tree_hl()

        -- 防止 colorscheme 覆盖
        vim.api.nvim_create_autocmd("ColorScheme", {
            callback = set_nvim_tree_hl,
        })
    end,
}
