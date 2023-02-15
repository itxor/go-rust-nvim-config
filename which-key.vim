lua <<EOF
  local whichkey = require("which-key")
  local conf = {
    window = {
      border = "single", -- none, single, double, shadow
      position = "bottom", -- bottom, top
    },
  }

  local opts = {
    mode = "n", -- Normal mode
    prefix = "<leader>",
    buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
    silent = true, -- use `silent` when creating keymaps
    noremap = true, -- use `noremap` when creating keymaps
    nowait = false, -- use `nowait` when creating keymaps
  }

  local mappings = {
    ["w"] = { "<cmd>update!<CR>", "Save" },
    ["q"] = { "<cmd>q!<CR>", "Quit" },

    b = {
      name = "Buffer",
      c = { "<Cmd>bd!<Cr>", "Close current buffer" },
      D = { "<Cmd>%bd|e#|bd#<Cr>", "Delete all buffers" },
    },

    g = {
      name = "Git",
      s = { "<cmd>Neogit<CR>", "Status" },
    },

    d = {
        name = "Debug",
        t = { "<cmd>lua require('dapui').toggle()<cr>", "toogle" },
        b = { "<cmd>lua require('dap').toggle_breakpoint()<cr>", "new breakpoint" },
        
        c = { "<cmd>lua require('dap').continue()<cr>", "continue" },
        sv = { "<cmd>lua require('dap').step_over()<cr>", "step over" },
        si = { "<cmd>lua require('dap').step_into()<cr>", "step into" },
        so = { "<cmd>lua require('dap').step_into()<cr>", "step out" },

        hh = { "<cmd>lua lua require('dap.ui.variables').hover()<cr>", "variables hover" },
        hv = { "<cmd>lua lua require('dap.ui.variables').visual_hover()<cr>", "variables visual hover" },

        uh = { "<cmd>lua lua require('dap.ui.widgets').hover()<cr>", "widget hover" },
        uf = { "<cmd>lua lua local widgets=require('dap.ui.widgets');widgets.centered_float(widgets.scopes)<cr>", "widget hover" },

        ro = { "<cmd>lua require('dap').repl.open()<cr>", "repl open" },
        rl = { "<cmd>lua require('dap').repl.run_last()<cr>", "repl run last" },

        bc = { "<cmd>lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))", "set br 1" },
        bm = { "<cmd>lua require('dap').set_breakpoint({ nil, nil, vim.fn.input('Log point message: ')", "set br 2" },

        s = { "<cmd>lua require('dap.ui.variables').scopes()<cr>", "variables scopes" },
    },
  }

  whichkey.setup(conf)
  whichkey.register(mappings, opts)
EOF

