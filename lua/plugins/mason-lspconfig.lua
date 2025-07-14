return {
    -- mason-lspconfig 是 mason.nvim 和 nvim-lspconfig 之间的桥梁, 
    -- 负责自动绑定语言服务器
    "williamboman/mason-lspconfig.nvim",
    event = {"BufReadPre", "BufNewFile"},       -- 只在打开文件时加载

    -- 明确依赖 mason.nvim 插件
    dependencies = { "williamboman/mason.nvim" },

    opts = {
        -- 确保以下语言服务器在启动时自动安装
        ensure_installed = {
            "lua_ls",  -- Lua 语言服务器
            -- 可以在这里加其它 lsp server: "basedpyright", "clangd", "jsonls"
        },

        -- 打开后, 如果 lspconfig 里配置了一个没有安装的语言服务器, 
        -- 会自动通过 mason 安装它
        automatic_enable= false,
    }
}

