vim.keymap.set('n', '<leader>w', ':w<CR>', { noremap = true, silent = true, desc = 'Save Current File' })

vim.keymap.set('n', '<C-S-Bslash>', ':CMakeQuickRun<CR>', { noremap = true, silent = true })

vim.keymap.set('n', '<C-M-Bslash>', ':CMakeQuickDebug<CR>', { noremap = true, silent = true })

local dap = require('dap')

-- Toggle standard breakpoint
vim.keymap.set('n', '<leader>db', function() dap.toggle_breakpoint() end, { desc = "Toggle Breakpoint" })

-- Set conditional breakpoint
vim.keymap.set('n', '<leader>dB', function() 
  dap.set_breakpoint(vim.fn.input('Breakpoint condition: ')) 
end, { desc = "Conditional Breakpoint" })

-- Set log point (prints a message instead of pausing execution)
vim.keymap.set('n', '<leader>dl', function() 
  dap.set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) 
end, { desc = "Log Point" })

-- Clear all breakpoints
vim.keymap.set('n', '<leader>dc', function() dap.clear_breakpoints() end, { desc = "Clear Breakpoints" })

