return {
  "ggandor/leap.nvim",
  config = function()
    local leap = require "leap"
    --leap.create_default_mappings()
    leap.setup {}
  end,
}
