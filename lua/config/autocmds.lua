--[[
    autocmds.lua

    统一管理 Neovim 的自动命令(autocmd).

    设计目标:
    1. 所有"事件驱动行为"集中管理
    2. 避免分散在各个插件配置中(防止加载顺序问题)
    3. 保证行为可控, 可追踪(类似后端的 middleware / hook)

    典型场景：
    - FileType 定制(C / Lua / Python)
    - 保存前自动处理(format / lint)
    - UI 行为调整
]]


-- 禁用所有文件的自动延续注释功能
vim.api.nvim_create_autocmd("FileType", {
    pattern = "*",
    callback = function()
        vim.opt_local.formatoptions:remove({ "c", "r", "o" })
    end,
})
