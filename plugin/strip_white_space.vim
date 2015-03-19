" Remove trailing white spaces
function! <SID>StripTrailingWhitespaces()
		" Preparation: save last search, and cursor position.
		let _s=@/
		let l = line(".")
		let c = col(".")
		" Do the business:
		%s/\s\+$//e
		" Clean up: restore previous search history, and cursor position
		let @/=_s
		call cursor(l, c)
endfunction

if has("autocmd")
	" Remove trailing white space upon save
	autocmd BufWritePre *.py,*.js,*.coffee,*.erb,*.rb,*.rake,*.yml,*.md,*.css :call <SID>StripTrailingWhitespaces()
end
