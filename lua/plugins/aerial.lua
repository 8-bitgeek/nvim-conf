-- 用于生成代码大纲的插件
return {
    "stevearc/aerial.nvim",
    lazy = true,
    keys = {
        { "<leader>c", "<cmd>AerialToggle!<CR>", desc = "Toggle Outline" },
    },
    opts = {
        -- provider 优先级：LSP -> Treesitter -> Markdown
        backends = { "lsp", "treesitter", "markdown" },

        -- 布局设置
        layout = {
            default_direction = "right",                    -- 默认在右侧
            max_width = { 80, 0.2 },                        -- 最大宽度，30列或屏幕宽度20%
            min_width = 50,                                 -- 最小宽度
        },
        autojump = true,                                    -- 跟随跳转
        keymaps = {
        },
        show_guides = true,                                 -- 显示折叠引导线
        highlight_mode = "split_width",                     -- 高亮模式
        filter_kind = false,                                -- 不过滤任何符号类型，可按需开启
    },
    config = function(_, opts)
        require("aerial").setup(opts)

        -- 设置高亮颜色
        local function set_aerial_hl()
            vim.api.nvim_set_hl(0, "AerialLine",    { fg = "#ffffff", bg = "#3b4261", bold = true })
            vim.api.nvim_set_hl(0, "AerialLineNC",  { fg = "#c0caf5", bg = "#2e2f3f" })
            vim.api.nvim_set_hl(0, "AerialNormal",  { fg = "#c0caf5", bg = "#1e2030" })
            vim.api.nvim_set_hl(0, "AerialNormalNC",{ fg = "#828bb8", bg = "#1e2030" })
        end

        set_aerial_hl()                                     -- 先设置一次

        -- 主题切换后仍然保持颜色
        vim.api.nvim_create_autocmd("ColorScheme", {
            pattern = "*",
            callback = set_aerial_hl,
        })

        -- 右侧窗口自动打开
        vim.api.nvim_create_autocmd("FileType", {
            pattern = "*",
            callback = function()
                -- 如果需要打开可以取消注释：
                -- require("aerial").open({ reset = true })
            end
        })
    end,
}

