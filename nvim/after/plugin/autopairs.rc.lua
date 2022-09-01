local status, autopairs = pcall(require, 'nvim-autopairs')
if (not status) then print('!!! Autopairs not working') return end

autopairs.setup {
  disable_filetype = { 'TelescopePrompt', 'vim' }
}
