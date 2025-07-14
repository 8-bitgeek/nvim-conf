return {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",  -- 接入 LSP
        "hrsh7th/cmp-buffer",    -- 当前 buffer 补全
        "hrsh7th/cmp-path",      -- 文件路径补全
    },
    config = function()
        local cmp = require("cmp")
        cmp.setup({
            mapping = cmp.mapping.preset.insert({
            ["<Tab>"] = cmp.mapping.select_next_item(),
            ["<S-Tab>"] = cmp.mapping.select_prev_item(),
            ["<CR>"] = cmp.mapping.confirm({ select = true }),
            ["<C-Space>"] = cmp.mapping.complete(),
            ['<C-p>'] = cmp.mapping(function()
                vim.lsp.buf.signature_help()
            end, {'i'}),
        }),
        sources = cmp.config.sources({
            { name = "nvim_lsp" },
            { name = "buffer" },
            { name = "path" },
        }),
        })
    end,
}

