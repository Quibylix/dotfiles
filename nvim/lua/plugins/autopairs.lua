return {
  {
    "windwp/nvim-autopairs",
    opts = {}
  },
  {
    "windwp/nvim-ts-autotag",
    opts = {
      opts = {
        enable_rename = false,
        enable_close_on_slash = true,
      }
    }
  },
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    opts = {
      keymaps = {
        normal = "<leader>s",
        normal_cur = "<leader>ss",
        visual = "<leader>s",
        delete = "<leader>sd",
        change = "<leader>sc",
      }
    },
  }
}
