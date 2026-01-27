## 插件 setup() 方法的参数在 Lazy.nvim 中应该如何配置?

> opts 本质上是 Lazy 传递给插件的一个配置表, 加载插件时 Lazy 会自动将 opts 传递给插件的 setup 方法，适合大部分插件的配置.
> Lazy 内部大概是以以下方式传递给插件: if plugin.supports_setup then plugin.setup(opts) end

比如 mason.nvim 中需要如下方式配置 ui: 

```lua
require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})
```
在 lazy.nvim 的插件体系下可以这样写: 

```lua
return {
    "williamboman/mason.nvim",
    opts = {
            ui = {
            icons = {
                package_installed = "✓",
                package_pending = "➜",
                package_uninstalled = "✗",
            },
        },
    },
}
```

> 配置插件的快捷键映射, 该配置项与 opts 同级

```lua
return {
  keys = {
    { "<leader>o", "<cmd>Telescope find_files<cr>", desc = "Find Files" },      -- 查找文件
    { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live Grep" },       -- 模糊搜索
    { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Find Buffers" },      -- 查找缓冲区
    { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help Tags" },       -- 查找帮助文档
  },
}
```
