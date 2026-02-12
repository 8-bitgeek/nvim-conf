-- 美化通知, 配合 noice 使用
return {
    "rcarriga/nvim-notify",
    opts = {
        timeout = 4000,

        -- 关键：动画风格
        stages = "fade_in_slide_out",               -- slide/fade/fade_in_slide_out/static/slide_in_slide_out

        -- 关键：渲染风格
        render = "wrapped-default",

        -- 背景透明感
        background_colour = "#000000",

        -- 图标
        icons = {
            ERROR = "",
            WARN  = "",
            INFO  = "",
            DEBUG = "",
            TRACE = "✎",
        },

        -- 最大宽度/高度
        max_width = function()
            return math.floor(vim.o.columns * 0.25)
        end,
        max_height = function()
            return math.floor(vim.o.lines * 0.3)
        end,
    },

    config = function(_, opts)
        local notify = require("notify")
        notify.setup(opts)
        -- 这行非常关键！！！！
        vim.notify = notify
    end,
}
