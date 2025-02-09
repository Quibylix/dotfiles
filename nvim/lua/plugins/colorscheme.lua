local highlights = {
  { "@markup.raw",                                    { fg = "${none}" } },
  { "@keyword.operator.lua",                          { fg = "${purple}" } },
  { "@tag.builtin.tsx",                               { fg = "${red}" } },
  { "@tag.tsx",                                       { fg = "${yellow}" } },
  { "@lsp.typemod.variable.readonly.typescriptreact", { fg = "${yellow}" } },
  { "@lsp.typemod.variable.readonly.typescript",      { fg = "${yellow}" } },
  { "@lsp.typemod.variable.readonly.javascript",      { fg = "${yellow}" } },
  { "@string.special.url.html",                       { fg = "${blue}", underline = true, italic = true } },
  { "@lsp.mod.defaultLibrary.typescript",             { fg = "${none}" } },
  { "@markup.link.label",                             { fg = "${none}" } },
  { "@markup.heading",                                { fg = "${none}" } },
  { "@markup.heading.1",                              { fg = "${none}" } },
  { "@markup.heading.2",                              { fg = "${none}" } },
  { "@markup.heading.3",                              { fg = "${none}" } },
  { "@markup.heading.4",                              { fg = "${none}" } },
  { "@markup.heading.5",                              { fg = "${none}" } },
  { "@markup.heading.6",                              { fg = "${none}" } },
  { "@markup.strong",                                 { fg = "${none}" } },
  { "@markup.emphasis",                               { fg = "${none}" } },
  { "@markup.strikethrough",                          { fg = "${none}" } },
  { "@markup.underline",                              { fg = "${none}" } },
  { "@markup.raw",                                    { fg = "${none}" } },
  { "@lsp.type.parameter.typescript",                 { italic = true } },
  { "@lsp.type.parameter.typescriptreact",            { italic = true } },
  { "@punctuation.special",                           { fg = "${orange}" } }
}

return {
  {
    "olimorris/onedarkpro.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      local configHighlights = {}
      for _, highlight in ipairs(highlights) do
        configHighlights[highlight[1]] = highlight[2]
      end

      require("onedarkpro").setup({
        highlights = configHighlights,
      })

      vim.cmd([[colorscheme onedark]])
    end,
  },
  -- {
  --   "folke/tokyonight.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   init = function()
  --     vim.cmd([[colorscheme tokyonight]])
  --   end,
  -- },
}
