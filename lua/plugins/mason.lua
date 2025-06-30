return {
    -- mason 是 Neovim 的 LSP/DAP/格式化工具的安装器（可视界面 + 安装逻辑）
    "williamboman/mason.nvim",
    cmd = "Mason",                      -- 只有执行 :Mason 命令时才加载

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

