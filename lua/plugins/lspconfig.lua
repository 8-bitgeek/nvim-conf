-- 用于配置 nvim 的 LSP 客户端, 进行语言服务器的注册和参数定制
return {
    "neovim/nvim-lspconfig",
    event = {"BufReadPre", "BufNewFile"},                                       -- 只在打开文件时加载
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/cmp-nvim-lsp",
    },

    config = function()
        local util = require("lspconfig.util")
        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        -- 所有语言服务器共享的快捷键等行为
        local function on_attach(client, bufnr)
            local map = vim.keymap.set
            local opts = { buffer = bufnr, silent = true }
            vim.diagnostic.config({ update_in_insert = true })
            map("n", "gd", vim.lsp.buf.definition, opts)
            map("n", "gD", vim.lsp.buf.declaration, opts)
            map("n", "gi", vim.lsp.buf.implementation, opts)
            map("n", "gr", vim.lsp.buf.references, opts)
            map("n", "K", vim.lsp.buf.hover, opts)
            map("n", "<leader>rn", vim.lsp.buf.rename, opts)
            map("n", "<leader>ca", vim.lsp.buf.code_action, opts)
            map("n", "<leader>f", function() vim.lsp.buf.format { async = true } end, opts)
            map('n', '<C-p>', vim.lsp.buf.signature_help, { noremap = true, silent = true })

            -- 禁用某些语言服务器的内建格式化
            if client.name == "pyright" then
                client.server_capabilities.documentFormattingProvider = false
            end

            print("LSP attached for " .. client.name)
        end

        -- Lua LSP 配置
        vim.lsp.config("lua_ls", {
            cmd = { 'lua-language-server' },
            filetypes = { 'lua' },
            capabilities = capabilities,
            on_attach = on_attach,
            settings = {
                Lua = {
                    diagnostics = { globals = { "vim" } },                      -- 忽略 vim 未定义报错
                }
            }
        })

        -- Python LSP 配置
        vim.lsp.config("pyright", {
            capabilities = capabilities,
            on_attach = on_attach,
            filetypes = { "python", "py" },
            root_dir = util.root_pattern(".git", "pyproject.toml", "setup.py", "requirements.txt"),
        })

        vim.lsp.config("clangd", {
            capabilities = capabilities,
            on_attach = on_attach,
            cmd = {"clangd", "--background-index"},                             -- 可选优化参数
            filetypes = {"c", "cpp", "objc", "objcpp"},
            root_dir = util.root_pattern("compile_commands.json", ".git"),      -- 判断当前工程的根目录
        })

        vim.lsp.enable({ "clangd", "lua_ls", "pyright" })
    end,
}

