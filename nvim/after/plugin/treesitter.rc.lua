local status, ts = pcall(require, 'nvim-treesitter.configs')
if (not status) then return end

ts.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    'javascript',
    'typescript',
    'tsx',
    'lua',
    'json',
    'css'
  },
  autotag = {
    enable = true
  },
  context_commentstring = {
    enable = true,
    enabe_autocmd = false
  }
}
