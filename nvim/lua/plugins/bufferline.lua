return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        require("bufferline").setup({
            options = {
                offsets = {
                    {
                        filetype = "neo-tree",
                        text = "Explorer",
                        separator = false,
                        text_align = "left",
                    }
                }
            }
        })
    end
}
