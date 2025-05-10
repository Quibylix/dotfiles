return {
  {
    "neovim/nvim-lspconfig",
    dependencies = { "hrsh7th/cmp-nvim-lsp" },
    init = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())
      local servers_config = require("config.server")

      local lspconfig = require("lspconfig")

      for server, opts in pairs(servers_config) do
        opts.capabilities = capabilities

        lspconfig[server].setup(opts)
      end

      vim.api.nvim_create_autocmd("BufWritePre", {
        pattern = { "*.c", "*.cpp", "*.lua" },
        callback = function()
          vim.lsp.buf.format()
        end
      })
    end
  },
  {
    "jinzhongjia/LspUI.nvim",
    event = "LspAttach",
    branch = "main",
    opts = {},
    keys = {
      { "<leader>rn", "<cmd>LspUI rename<cr>",      { "n", "v" } },
      { "K",          "<cmd>LspUI hover<cr>",       { "n", "v" } },
      { "<leader>ca", "<cmd>LspUI code_action<cr>", { "n", "v" } },
      { "<leader>rf", "<cmd>LspUI reference<cr>",   { "n", "v" } },
    },
    version = "a8f0720168e48561d0f22c418a225ca8933fc258"
  }
}
