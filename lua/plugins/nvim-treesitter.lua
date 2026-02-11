-- 用于管理语法解析器: parser, 使用方式: TSInstall python
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
