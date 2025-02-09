return {
  clangd = {
    cmd = { "clangd", "--query-driver=/usr/bin/gcc" }
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
  cssls = {}
}
