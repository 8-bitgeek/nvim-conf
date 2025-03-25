return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  event = "VeryLazy",
  keys = {
      { "L", "<cmd>BufferLineCycleNext<cr>", desc = "Cycle Next Tab" },
      { "H", "<cmd>BufferLineCyclePrev<cr>", desc = "Cycle Previous Tab" },
      { "<leader>qq", "<cmd>bd<cr>", desc = "Close Current Tab" },
  },
  opts = {
    options = {
      numbers = "ordinal",
      diagnostics = "nvim_lsp",
      separator_style = "slant",
      offsets = {
        {
          filetype = "NvimTree",
          text = "File Explorer",
          highlight = "Directory",
          text_align = "center",
        },
      },
      show_close_icon = true,
      show_buffer_close_icons = true,
      always_show_bufferline = true,
    },
  },
}

