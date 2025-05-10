return {
  clangd = {
    cmd = { "clangd" },
    inlay_hints = false
  },
  lua_ls = {
    settings = {
      Lua = {
        diagnostics = {
          globals = { "vim" }
        },
        workspace = {
          library = { vim.env.VIMRUNTIME }
        }
      }
    }
  },
  ts_ls = {},
  html = {},
  cssls = {},
  pyright = {}
}
