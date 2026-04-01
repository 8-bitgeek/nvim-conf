return {
    "lewis6991/gitsigns.nvim",
    opts = {
        signs = {
            add          = { text = "│" },
            change       = { text = "│" },
            delete       = { text = "_" },
            topdelete    = { text = "‾" },
            changedelete = { text = "~" },
        },

        -- blame
        current_line_blame = true,

        -- 更新频率
        update_debounce = 200,

        -- 关键：快捷键
        on_attach = function(bufnr)
            local gs = package.loaded.gitsigns

            local function map(mode, l, r, desc)
                vim.keymap.set(mode, l, r, {
                    buffer = bufnr,
                    desc = desc,
                })
            end

            -- 🚀 核心：hunk 操作
            map("n", "<leader>hs", gs.stage_hunk, "Stage Hunk")
            map("n", "<leader>hr", gs.reset_hunk, "Reset Hunk")
            map("n", "<leader>tb", gs.toggle_current_line_blame, "Toggle Blame")

            -- 可视模式 stage
            map("v", "<leader>hs", function()
                gs.stage_hunk({
                    vim.fn.line("."),
                    vim.fn.line("v"),
                })
            end, "Stage Hunk")

            -- 查看 diff
            map("n", "<leader>hp", gs.preview_hunk, "Preview Hunk")

            -- blame
            map("n", "<leader>hb", gs.blame_line, "Blame Line")

            -- 跳转 hunk
            map("n", "]c", gs.next_hunk, "Next Hunk")
            map("n", "[c", gs.prev_hunk, "Prev Hunk")
        end,
    },
}
