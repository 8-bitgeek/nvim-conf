return {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    event = "VeryLazy",
    opts = {
        ensure_installed = {
            "c", "make", "lua", "bash", "json", "yaml", "markdown", "python"
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
