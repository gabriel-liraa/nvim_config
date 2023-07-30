vim.fn.sign_define('DapBreakpoint', {text='•', texthl='red', linehl='', numhl=''})

local dap, dapui = require("dap"), require("dapui")
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end

dap.adapters.cppdbg = {
  id = 'cppdbg',
  type = 'executable',
  command = '/home/gabriellira/.dap_neovim/cpptools-linux/extension/debugAdapters/bin/OpenDebugAD7',
}

local dap = require('dap')
dap.configurations.cpp = {
  {
    name = "Launch file",
    type = "cppdbg",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopAtEntry = true,
  },
}

dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp

require("dapui").setup()
require("nvim-dap-virtual-text").setup()
