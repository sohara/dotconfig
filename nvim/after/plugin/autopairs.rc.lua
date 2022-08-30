local status, autopairs = pcall(require, 'nviim-autopairs')
if (not status) then return end

autopairs.setup {
  disable_filetype = { 'TelescopePrompt', 'vim' }
}
