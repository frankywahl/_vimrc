augroup filetype_csv
  autocmd!
  autocmd FileType yaml setlocal        tabstop=2 softtabstop=2 shiftwidth=2 expandtab
augroup END

augroup filetype_haml
  autocmd!
  autocmd FileType haml setlocal        tabstop=2 softtabstop=2 shiftwidth=2 expandtab foldmethod=indent
augroup END

augroup filetype_html
  autocmd!
  autocmd FileType html setlocal        tabstop=2 softtabstop=2 shiftwidth=2 expandtab
augroup END

augroup filetype_css
  autocmd!
  autocmd FileType css setlocal         tabstop=2 softtabstop=2 shiftwidth=2 expandtab
  autocmd FileType css set omnifunc=csscomplete#CompleteCSS
augroup END

augroup filetype_javascript
  autocmd!
  autocmd FileType javascript setlocal  tabstop=2 softtabstop=2 shiftwidth=2 expandtab
augroup END

augroup filetype_json
  autocmd!
  autocmd FileType json setlocal        tabstop=2 softtabstop=2 shiftwidth=2 noexpandtab
augroup END

augroup filetype_ruby
  autocmd!
  autocmd FileType ruby setlocal        tabstop=2 softtabstop=2 shiftwidth=2 expandtab
augroup END

augroup filetype_make
  autocmd!
  autocmd FileType make setlocal        tabstop=8 softtabstop=8 shiftwidth=8 noexpandtab
augroup END

augroup filetype_yaml
  autocmd!
  autocmd FileType yaml setlocal        tabstop=2 softtabstop=2 shiftwidth=2 expandtab foldmethod=indent
augroup END

augroup filetype_gitcommit
  autocmd!
  autocmd FileType gitcommit setlocal        tabstop=2 softtabstop=2 shiftwidth=2 expandtab spell textwidth=72
augroup END

augroup filetype_text
  autocmd!
  autocmd FileType text setlocal        tabstop=2 softtabstop=2 shiftwidth=2 expandtab spell
augroup END

augroup filetype_markdown
  autocmd!
  autocmd FileType markdown setlocal        tabstop=2 softtabstop=2 shiftwidth=2 expandtab spell
augroup END

augroup filetype_markdown
  autocmd!
  autocmd FileType markdown setlocal        tabstop=2 softtabstop=2 shiftwidth=2 noexpandtab
augroup END

augroup filetype_go
  autocmd!
  autocmd FileType go setlocal        tabstop=2 softtabstop=2 shiftwidth=2 noexpandtab

	" Go to definition
	autocmd FileType go nmap gf :GoDef<CR>

	" Show a list of interfaces which is implemented by the type under your cursor
	autocmd FileType go nmap <Leader>s <Plug>(go-implements)

	" Show type info for the word under your cursor
	autocmd FileType go nmap <Leader>i <Plug>(go-info)

	" Open the relevant Godoc for the word under the cursor
	autocmd FileType go nmap <Leader>gd <Plug>(go-doc)
	autocmd FileType go nmap <Leader>gv <Plug>(go-doc-vertical)

	" Open the Godoc in browser
	autocmd FileType go nmap <Leader>gb <Plug>(go-doc-browser)

	" Run/build/test/coverage
	autocmd FileType go nmap <leader>r <Plug>(go-run)
	autocmd FileType go nmap <leader>b <Plug>(go-build)
	autocmd FileType go nmap <leader>t <Plug>(go-test)
	autocmd FileType go nmap <leader>c <Plug>(go-coverage)
augroup END

