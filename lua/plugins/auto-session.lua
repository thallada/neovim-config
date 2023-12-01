vim.o.sessionoptions='blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal'

require('auto-session').setup({
	log_level = 'error',
	auto_session_suppress_dirs = { '~/', '~/workspace', '~/Downloads', '/'},
	auto_session_enable_last_session = false,
})
