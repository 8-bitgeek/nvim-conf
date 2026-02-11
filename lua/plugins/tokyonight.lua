-- 主题
return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("tokyonight").setup({
      style = "moon",
      on_highlights = function(hl, colors)
        hl.Comment = {
          fg = "#FFFF00", -- 明亮黄色注释
          italic = true,
        }
      end,
    })
    vim.cmd("colorscheme tokyonight")
  end,
}
