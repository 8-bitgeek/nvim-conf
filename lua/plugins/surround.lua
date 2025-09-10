return {
    "kylechui/nvim-surround",
    version = "*",    -- 推荐锁定最新稳定版
    event = "VeryLazy", -- 懒加载时机
    config = function()
        require("nvim-surround").setup({})
    end,
}
