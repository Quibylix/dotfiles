return {
  "github/copilot.vim",
  opts = {},
  config = function()
    vim.g.copilot_filetype = {
      env = false
    }

    vim.keymap.set("i", "<c-j>", "copilot#Accept('<CR>')", {
      expr = true,
      replace_keycodes = false
    })

    vim.keymap.set("n", "<leader>ct", function()
      if vim.g.loaded_copilot == 1 and vim.fn["copilot#Enabled"]() == 1 then
        vim.b.copilot_enabled = 0
      else
        vim.b.copilot_enabled = 1
      end
    end)

    vim.g.copilot_no_tab_map = true
  end
}
