require('lualine').setup({
	extensions = { 'drex' },
	sections = {
		lualine_c = {
			require('auto-session.lib').current_session_name,
			{
				'filename',
				file_status = true, -- displays file status (readonly status, modified status)
				path = 1, -- 0 = just filename, 1 = relative path, 2 = absolute path
			},
		},
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { {
			'filename',
			file_status = true, -- displays file status (readonly status, modified status)
			path = 1 -- 0 = just filename, 1 = relative path, 2 = absolute path
		} },
		lualine_x = { 'location' },
		lualine_y = {},
		lualine_z = {}
	},
})
