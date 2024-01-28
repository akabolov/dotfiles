return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")

			vim.keymap.set("n", "<leader>f", builtin.find_files, {})
			vim.keymap.set("n", "<leader>d", builtin.diagnostics, {})
			vim.keymap.set("n", "<leader>g", builtin.live_grep, {})
			vim.keymap.set("n", "<leader>b", builtin.buffers, {})
			vim.keymap.set("n", "<leader>ht", builtin.help_tags, {})
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
			require("telescope").load_extension("bookmarks")
		end,
	},
	{
		"tomasky/bookmarks.nvim",
		-- after = "telescope.nvim",
		config = function()
			require("bookmarks").setup({

				save_file = vim.fn.expand("$HOME/.bookmarks"), -- bookmarks save file path
				keywords = {
					["@t"] = "☑️ ", -- mark annotation startswith @t ,signs this icon as `Todo`
					["@w"] = "⚠️ ", -- mark annotation startswith @w ,signs this icon as `Warn`
					["@f"] = "⛏ ", -- mark annotation startswith @f ,signs this icon as `Fix`
					["@n"] = " ", -- mark annotation startswith @n ,signs this icon as `Note`
				},
				on_attach = function(bufnr)
					local bm = require("bookmarks")

					vim.keymap.set("n", "mm", bm.bookmark_toggle, {}) -- add or remove bookmark at current line
					vim.keymap.set("n", "mi", bm.bookmark_ann, {}) -- add or edit mark annotation at current line
					vim.keymap.set("n", "mc", bm.bookmark_clean, {}) -- clean all marks in local buffer
					vim.keymap.set("n", "mn", bm.bookmark_next,{}) -- jump to next mark in local buffer
					vim.keymap.set("n", "mp", bm.bookmark_prev, {}) -- jump to previous mark in local buffer
					vim.keymap.set("n", "ml", bm.bookmark_list, {}) -- show marked file list in quickfix window
				end,
			})
		end,
	},
}
