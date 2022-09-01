local status, surround = pcall(require, 'surround')
if (not status) then
  print('Surround not found')
  return
end

surround.setup {
  mappings_style = "surround"
}
