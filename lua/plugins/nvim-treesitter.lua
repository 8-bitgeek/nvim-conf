return {
    "nvim-treesitter/nvim-treesitter",
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
    }
}
