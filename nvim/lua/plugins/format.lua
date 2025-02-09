local pattern = {
  ".js",
  ".jsx",
  ".ts",
  ".tsx",
  ".json",
  ".jsonc",
  ".css",
  ".html",
  ".yaml",
  ".c",
  ".cpp"
};

return {
  "stevearc/conform.nvim",
  event = "BufWritePre",
  opts = {
    formatters_by_ft = {
      javascript = { "prettierd", stop_after_first = true },
      javascriptreact = { "prettierd", stop_after_first = true },
      typescript = { "prettierd", stop_after_first = true },
      typescriptreact = { "prettierd", stop_after_first = true },
      css = { "prettierd", stop_after_first = true },
      html = { "prettierd", stop_after_first = true },
      json = { "prettierd", stop_after_first = true },
      jsonc = { "prettierd", stop_after_first = true },
      yaml = { "prettierd", stop_after_first = true },
      -- c = { "clang-format", stop_after_first = true },
      -- cpp = { "clang-format", stop_after_first = true },
    },
    default_format_opts = {
      lsp_format = "fallback",
    },
    format_on_save = {
      timeout_ms = 500,
    },
  },
}
