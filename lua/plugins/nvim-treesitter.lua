return {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    lazy = false,
    opts = {
        ensure_installed = {
            "c", "make", "lua", "bash", "json", "yaml", "markdown", "python"
        },
        highlight = {
            enable = true,
        },
        indent = {
            enable = true,
        },
        auto_install = true,
    },
    build = ":TSUpdate"                                     -- 安装后更新 parser
}
