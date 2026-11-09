-- 用于桥接 Mason 与 lspconfig
local servers = {
    "lua_ls",
    "clangd",
    "jsonls",
    "pyright",
    "bashls",
    "remark_ls",
}

return {
    -- mason-lspconfig 是 mason.nvim 和 nvim-lspconfig 之间的桥梁, 
    -- 负责自动绑定语言服务器
    "williamboman/mason-lspconfig.nvim",
    event = { "BufReadPre", "BufNewFile" },
    -- 未命名缓冲区手动设置语言时，也能加载 LSP
    ft = { "lua", "c", "cpp", "objc", "objcpp", "json", "jsonc", "python", "py", "bash", "sh", "markdown" },
    cmd = { "LspInfo", "LspLog", "LspStart", "LspStop", "LspRestart", "LspInstall", "LspUninstall" },

    -- 先初始化 Mason 和各语言配置，再执行自动安装与启用
    dependencies = { "williamboman/mason.nvim", "neovim/nvim-lspconfig" },

    opts = {
        -- 使用同一份清单自动安装并启用语言服务器
        ensure_installed = servers,
        automatic_enable = servers,
    }
}

