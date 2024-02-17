return {
	"nvim-telescope/telescope-file-browser.nvim",
	dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
	config = function()
		require("telescope").setup {
			extensions = {
				file_browser = {
					sorting_strategy = 'ascending',
					layout_config = {
						horizontal = {
							prompt_position = 'top',
							height = 0.99,
							width = 0.99,
							preview_width = 0.75
						}
					},
					hijack_netrw = true,
					hidden = { file_browser = true, file_folder = true }
				},
			},
		}
		require("telescope").load_extension "file_browser"

		vim.keymap.set('n', '<leader>fb', ':Telescope file_browser<CR>', {})
	end
}
