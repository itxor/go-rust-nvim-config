local codecompanion = require("codecompanion")

codecompanion.setup({
  strategies = {
	chat = {
	  adapter = {
		name = "copilot",
		model = "claude-sonnet-4",
		-- model = "claude-haiku-4.5",
		-- model = "grok-code-fast-1",
	  }
	}
  },
extensions = {
	mcphub = {
	  callback = "mcphub.extensions.codecompanion",
	  opts = {
		make_vars = true,
		make_slash_commands = true,
		show_result_in_chat = true
	  }
	}
  },
	display = {
			chat = {
			  -- Change the default icons
			  icons = {
				buffer_pin = " ",
				buffer_watch = "👀 ",
			  },
			  -- Alter the sizing of the debug window
			  debug_window = {
				---@return number|fun(): number
				width = vim.o.columns - 5,
				---@return number|fun(): number
				height = vim.o.lines - 2,
			  },
			  -- Options to customize the UI of the chat buffer
			  window = {
				layout = "vertical", -- float|vertical|horizontal|buffer
				position = "right", -- left|right|top|bottom (nil will default depending on vim.opt.splitright|vim.opt.splitbelow)
				border = "single",
				height = 0.8,
				width = 0.3,
				relative = "editor",
				full_height = true, -- when set to false, vsplit will be used to open the chat buffer vs. botright/topleft vsplit
				sticky = false, -- when set to true and `layout` is not `"buffer"`, the chat buffer will remain opened when switching tabs
				opts = {
				  breakindent = true,
				  cursorcolumn = false,
				  cursorline = false,
				  foldcolumn = "0",
				  linebreak = true,
				  list = false,
				  numberwidth = 1,
				  signcolumn = "no",
				  spell = false,
				  wrap = true,
				},
			  },
			  ---Customize how tokens are displayed
			  ---@param tokens number
			  ---@param adapter CodeCompanion.Adapter
			  ---@return string
			  token_count = function(tokens, adapter)
				return " (" .. tokens .. " tokens)"
			  end,
			},
		  }
})

require("plugins.codecompanion.fidget-spinner"):init()
require("plugins.codecompanion.inline-spinner"):init()
