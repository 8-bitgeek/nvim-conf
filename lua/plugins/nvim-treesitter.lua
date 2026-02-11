return {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    event = "VeryLazy",
    opts = {
        ensure_installed = {
            "c", "lua", "bash", "json", "yaml", "markdown",
        },
        highlight = {
            enable = true,
        },
        indent = {
            enable = true,
        }
    },
    build = ":TSUpdate"                                     -- 安装后更新 parser
}
