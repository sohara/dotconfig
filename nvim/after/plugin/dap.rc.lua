local status, dap = pcall(require, 'dap')
if (not status) then
  print("Can't find DAP")
  return
end

dap.adapters.node2 = {
  type = 'executable',
  command = 'node',
  args = {os.getenv('HOME') .. '/Code/microsoft/vscode-node-debug2/out/src/nodeDebug.js'}
}

vim.fn.sign_define('DapBreakpoint', {text='🟥', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapStopped', {text='⭐️', texthl='', linehl='', numhl=''})

vim.keymap.set('n', '<Leader>db', '<cmd>lua require"dap".toggle_breakpoint()<CR>')
vim.keymap.set('n', '<Leader>dc', '<cmd>lua require"dap".continue()<CR>')
vim.keymap.set('n', '<Leader>do', '<cmd>lua require"dap".step_over()<CR>')

local status2, dap_text = pcall(require, 'nvim-dap-virtual-text')
if (not status2) then
  print("Can't find DAP Virtual text")
  return
end

dap_text.setup()
vim.g.dap_virtual_text = true

local status3, dapui = pcall(require, 'dapui')
if (not status2) then
  print("Can't find DAP UI")
  return
end

dapui.setup()
vim.keymap.set('n', '<Leader>dq', '<cmd>lua require"dapui".toggle()<CR>')
