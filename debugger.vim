lua <<EOF
    require('dap-go').setup()

    require("dapui").setup()
    -- auto start dapui when debug session is started
    local dap, dapui =require("dap"),require("dapui")
    dap.listeners.after.event_initialized["dapui_config"]=function()
      dapui.open()
    end
    dap.listeners.before.event_terminated["dapui_config"]=function()
      dapui.close()
    end
    dap.listeners.before.event_exited["dapui_config"]=function()
      dapui.close()
    end

    -- make breakpoints look nicer
    vim.fn.sign_define('DapBreakpoint',{ text ='🟥', texthl ='', linehl ='', numhl =''})
    vim.fn.sign_define('DapStopped',{ text ='▶️', texthl ='', linehl ='', numhl =''})

    -- set some keymaps
    vim.keymap.set('n', '<F5>', require 'dap'.continue)
    vim.keymap.set('n', '<F7>', require 'dap'.step_into)
    vim.keymap.set('n', '<F8>', require 'dap'.step_over)
    vim.keymap.set('n', '<F9>', require 'dap'.step_out)
    vim.keymap.set('n', '<leader>b', require 'dap'.toggle_breakpoint)
EOF
