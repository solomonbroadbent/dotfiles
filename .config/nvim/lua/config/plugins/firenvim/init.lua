vim.cmd [[
	function! OnUIEnter(event)
		let l:ui = nvim_get_chan_info(a:event.chan)
		if has_key(l:ui, 'client') && has_key(l:ui.client, 'name')
			if l:ui.client.name ==# 'Firenvim'
				set guifont='Isoveka:h25'
				" set guifont='Fira_Code:h50'
			endif
		endif
	endfunction
	autocmd UIEnter * call OnUIEnter(deepcopy(v:event))
]]

vim.cmd [[
	let g:firenvim_config = { 
    \ 'localSettings': {
        \ '.*': {
            \ 'priority': 1,
            \ 'takeover': 'never',
        \ },
    \ }
\ }
]]

