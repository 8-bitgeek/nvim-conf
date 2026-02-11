--- 用于安装/管理 LSP 服务的插件
--- ┌────────────────────────┐
--- │   Neovim 编辑器本体    │
--- └─────────┬──────────────┘
          --- │
--- ┌─────────▼──────────────┐
--- │    nvim-lspconfig      │  ← 启动 & 管理 LSP client
--- │  （vim.lsp.start）     │
--- └─────────┬──────────────┘
          --- │
--- ┌─────────▼──────────────┐
--- │    mason-lspconfig     │  ← “桥接层 / 胶水层”
--- │  （自动发现 mason 装的 │
--- │   LSP 并喂给 lspconfig │
--- └─────────┬──────────────┘
          --- │
--- ┌─────────▼──────────────┐
--- │       mason            │  ← 下载 / 更新 / 管理 LSP 二进制
--- │  （clangd / lua_ls 等）│
--- └────────────────────────┘

return {
    -- mason 是 Neovim 的 LSP/DAP/格式化工具的安装器（可视界面 + 安装逻辑）
    "williamboman/mason.nvim",
    -- event = "VeryLazy",

    -- mason 的配置项
    opts = {
        ui = {
            icons = {
            -- 安装完成后的标志
            package_installed = "✓",
            -- 正在安装中的标志
            package_pending = "➜",
            -- 尚未安装的标志
            package_uninstalled = "✗",
        },
    },
  },
}

