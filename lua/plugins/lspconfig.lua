return {
  "neovim/nvim-lspconfig",
  dependencies = { "williamboman/mason-lspconfig.nvim" },  -- mason-lspconfig 必须先加载
  config = function()
    local lspconfig = require("lspconfig")

    lspconfig.lua_ls.setup {
      on_attach = function(client, bufnr) 
	print("Lua LSP Attached!")
      end
    }
  end
}
