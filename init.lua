-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("lspconfig").ruff.setup({
  init_options = {
    settings = {
      -- Ruff language server settings go here
      lineLength = 88,
      indentSize = 4,
      indentStyle = "space",
      quoteStyle = "double",
      lineEnding = "auto",
    },
    args = {
      "--extend-select",
      "I", -- Example: select specific error codes
    },
  },
})
