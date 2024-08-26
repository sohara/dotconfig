return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "typescript-language-server",
        "vue-language-server",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        float = {
          border = "rounded",
        },
      },
      servers = {
        ruby_lsp = {
          mason = false,
          cmd = { vim.fn.expand("~/.rbenv/shims/ruby-lsp") },
        },
      },
    },
  },
}
