return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      sections = {
        lualine_x = { 'copilot', 'encoding', 'fileformat', 'filetype' },
      }
    }
  },
  {
    "ofseed/copilot-status.nvim",
    dependencies = { "nvim-lualine/lualine.nvim" },
  }
}
