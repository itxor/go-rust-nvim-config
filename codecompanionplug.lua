require("codecompanion").setup({
  adapters = {
    -- openai = function()
    --   return require("codecompanion.adapters").extend("openai", {
    --     schema = {
    --       model = {
    --         default = "gpt-4-mini",
    --       },
    --     },
    --   })
    -- end,
    anthropic = function()
      return require("codecompanion.adapters").extend("anthropic", {
        schema = {
          model = {
            default = "claude-3-haiku-20240307",
          },
        },
      })
    end,
  },
  strategies = {
    chat = {
      adapter = "anthropic"
    },
    inline = {
      adapter = "copilot"
    }
  },
})
