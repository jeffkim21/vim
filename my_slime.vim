let g:slime_target = "vimterminal"
let b:slime_vimterminal_cmd = "ipython3"
let g:slime_vimterminal_config = {"term_finish": "close", "vertical":1}

augroup python
	au!
	au FileType python map <F5> <esc>:1,%SlimeSend<cr>
augroup end
