-- detect file type for docker-compose lsp
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
    pattern = { "docker-compose.yaml", "docker-compose.yml" },
    callback = function()
        vim.bo.filetype = "yaml.docker-compose"
    end,
})
