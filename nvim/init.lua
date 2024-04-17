-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

local lspconfig = require("lspconfig")

lspconfig.volar.setup({
  filetypes = { "vue" },
  init_options = {
    vue = {
      hybridMode = false,
    },
  },
})
