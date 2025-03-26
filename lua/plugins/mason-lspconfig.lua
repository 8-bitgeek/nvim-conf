return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = { "williamboman/mason.nvim" },
  opts = {
    ensure_installed = {
      "lua_ls"
    },
    automatic_installation = true,	-- 自动安装缺少的语言服务器
  }
}
