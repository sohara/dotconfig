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
