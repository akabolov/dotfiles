return {
  "catppuccin/nvim",
  name = "catpuccin",
  priority = 1000,
  config = function()
    -- Lazy package manager by default will run .setup() by itself
    -- require("catppuccin").setup()
    --     vim.cmd.colorscheme "catppuccin"
  end
}
