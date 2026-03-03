-- 启动界面优化
return {
    "goolord/alpha-nvim",
    -- dependencies = { 'nvim-mini/mini.icons' },
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        local dashboard = require("alpha.themes.dashboard")

        dashboard.section.header.val = {
            "███╗   ██╗██╗   ██╗██╗███╗   ███╗",
            "████╗  ██║██║   ██║██║████╗ ████║",
            "██╔██╗ ██║██║   ██║██║██╔████╔██║",
            "██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║",
            "██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║",
        }

        dashboard.section.buttons.val = {
            dashboard.button("e", "  New file", ":ene <CR>"),
            dashboard.button("f", "󰱼  Find file", ":Telescope find_files<CR>"),
            dashboard.button("r", "  Recent", ":Telescope oldfiles<CR>"),
            dashboard.button("q", "  Quit", ":qa<CR>"),
        }

        require("alpha").setup(dashboard.opts)
    end,
}
