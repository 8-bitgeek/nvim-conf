-- 主题
return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("tokyonight").setup({
            style = "moon",
            on_highlights = function(hl, colors)
                hl.Comment = {
                    fg = "#FFFF00",     -- 明亮黄色注释
                    italic = true,
                }
                hl.LineNrAbove = {
                    fg = "#7aa2f7",     -- 上方相对行号(蓝色)
                    bold = true,
                }
                hl.LineNrBelow = {
                    fg = "#7aa2f7",
                    bold = true,
                }
                hl.CursorLineNr = {
                    fg = "#ff9e64",     -- 当前行号(橙色)
                    bold = true,
                }
            end,
        })
        vim.cmd("colorscheme tokyonight")
    end,
}
