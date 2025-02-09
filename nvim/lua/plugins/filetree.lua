return {
  'stevearc/oil.nvim',
  dependencies = { "nvim-tree/nvim-web-devicons" },
  lazy = false,
  config = function()
    require("oil").setup()

    vim.keymap.set("n", "<leader>t", "<cmd>Oil<cr>")
  end
}
