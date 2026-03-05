return {
    "akinsho/toggleterm.nvim",
    version = "*",  -- 保持最新稳定版本
    config = function()
        require("toggleterm").setup{
            size = 20,                                  -- terminal 高度（浮动可忽略）
            open_mapping = [[<F12>]],                   -- F12 打开/关闭 terminal
            hide_numbers = true,                        -- 隐藏行号
            shade_terminals = true,                     -- 背景颜色加深
            shading_factor = 2,                         -- 加深倍数
            direction = "float",                        -- 浮动 terminal, 可选配置: float/horizontal/vertical/tab
            close_on_exit = true,                       -- terminal 退出自动关闭 buffer
            start_in_insert = true,                     -- 打开 terminal 进入 insert 模式
            persist_size = true,                        -- 保留上次大小
            float_opts = {                              -- 浮动窗口配置
                border = 'curved',                      -- 窗口边框 'single','double','rounded','curved','shadow'
                winblend = 0,                           -- 透明度
                highlights = {                          -- 窗口高亮
                    border = "Normal",
                    background = "Normal",
                },
            },
        }
    end
}
