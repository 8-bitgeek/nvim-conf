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

    lspconfig.pyright.setup {
        filetypes = {'python', 'py'},                       -- 指定触发 LSP 的文件类型(覆盖默认值)
        root_dir = require("lspconfig.util").root_pattern(".git", "pyproject.toml"),    -- 项目根目录检测
        on_attach = function(client, bufnr)
            print("Python LSP Attached!")
        end
    }
  end
}
