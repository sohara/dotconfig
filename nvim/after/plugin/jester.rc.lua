local status, jester = pcall(require, 'jester')
if (not status) then
  print("Can't find Jester")
  return
end

jester.setup {
  path_to_jest_run = './node_modules/.bin/jest',
  terminal_cmd= ':belowright split | terminal'
}

vim.keymap.set('n', '<Leader>jf', '<cmd>lua require("jester").run_file()<CR>')
vim.keymap.set('n', '<Leader>jt', '<cmd>lua require("jester").run()<CR>')
vim.keymap.set('n', '<Leader>jl', '<cmd>lua require("jester").run_last()<CR>')
vim.keymap.set('n', '<Leader>jd', '<cmd>lua require("jester").debug()<CR>')
vim.keymap.set('n', '<Leader>jdf', '<cmd>lua require("jester").debug_file()<CR>')

-- See https://github.com/David-Kunz/vim/blob/master/_init.vim for more examples, keymaps, 
-- telescope integration, etc.
-- Also video here: https://www.youtube.com/watch?v=SIYt1dopfTc&t=28s&ab_channel=DevOnDuty
