return {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
        "MunifTanjim/nui.nvim",
        "rcarriga/nvim-notify",
    },
    opts = {
        -- 把消息转发给 notify
        notify = {
            enabled = true,
            view = "notify",
        },
        -- cmdline 变成居中浮窗
        cmdline = {
            view = "cmdline_popup",
        },

        -- message 改成右上角通知
        messages = {
            view = "notify",
        },

        -- LSP hover 也变浮窗（顺便升级）
        lsp = {
            hover = {
                enabled = true,
            },
            signature = {
                enabled = true,
            },
        },

        --  搜索 / 等待 UI
        presets = {
            command_palette = true,                 -- cmdline + popupmenu 合体
            long_message_to_split = true,
            inc_rename = false,
            lsp_doc_border = true,
        },
    },
}

