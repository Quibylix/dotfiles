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

      vim.keymap.set("n", "<leader>rn", function()
        vim.lsp.buf.rename();
      end)
      vim.keymap.set("n", "<leader>ca", function()
        vim.lsp.buf.code_action();
      end)
    end
  }
}
