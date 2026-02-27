-- 用于桥接 Mason 与 lspconfig
return {
    -- mason-lspconfig 是 mason.nvim 和 nvim-lspconfig 之间的桥梁, 
    -- 负责自动绑定语言服务器
    "williamboman/mason-lspconfig.nvim",
    -- event = {"BufReadPre", "BufNewFile"},       -- 只在打开文件时加载

    -- 明确依赖 mason.nvim 插件
    dependencies = { "williamboman/mason.nvim", "neovim/nvim-lspconfig" },

    opts = {
        -- 确保以下语言服务器在启动时自动安装
        ensure_installed = {
            "lua_ls",  -- Lua 语言服务器
            "clangd"
            -- 可以在这里加其它 lsp server: "basedpyright", "clangd", "jsonls"
        },
        -- automatically enable installed servers, 在这里启用(自动)，或在 lspconfig.lua 里手动启用
        automatic_enable = {
            "lua_ls",
            "clangd",
            -- "bashls",
            "basedpyright",
        },
    }
}

