return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },  -- 查找文件
    { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live Grep" },    -- 模糊搜索
    { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Find Buffers" },  -- 查找缓冲区
    { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help Tags" },   -- 查找帮助文档
  },
  opts = {
    pickers = {
      find_files = {
        -- theme = "dropdown",
      }
    },
  }
}
