require('lspsaga').setup({
  lightbulb = {
    enable = true,      -- можно и false, чтобы совсем выключить фичу
    sign = false,       -- <— не ставить знак в signcolumn
    virtual_text = true -- если хочешь, оставь виртуальный текст в конце строки
  },
  finder = {
    max_height = 0.6,
    keys = { vsplit = 'v' },
  },
})
