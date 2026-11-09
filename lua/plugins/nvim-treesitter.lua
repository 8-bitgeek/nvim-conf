-- 用于管理语法解析器: parser, 使用方式: TSInstall python
return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main", -- Neovim 0.12+
    lazy = false,
    build = ":TSUpdate", -- 安装后更新 parser
    config = function()
        local treesitter = require("nvim-treesitter")
        treesitter.setup({ install_dir = vim.fn.stdpath("data") .. "/site" })

        treesitter.install({
            "c", "make", "lua", "bash", "json", "yaml", "markdown", "python"
        })

        vim.api.nvim_create_autocmd("FileType", {
            group = vim.api.nvim_create_augroup("UserTreesitter", { clear = true }),
            callback = function(event)
                local bufnr = event.buf
                local language = vim.treesitter.language.get_lang(vim.bo[bufnr].filetype)
                if vim.bo[bufnr].buftype ~= "" or not language or not vim.treesitter.language.add(language) then
                    return
                end
                vim.treesitter.start(bufnr, language)
                vim.bo[bufnr].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
            end,
        })
    end,
}
