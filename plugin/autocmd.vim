augroup filetype_csv
  autocmd!
  autocmd FileType yaml setlocal        tabstop=2 softtabstop=2 shiftwidth=2 expandtab
augroup END

augroup filtype_haml
  autocmd!
  autocmd FileType haml setlocal        tabstop=2 softtabstop=2 shiftwidth=2 expandtab foldmethod=indent
augroup END

augroup filtype_html
  autocmd!
  autocmd FileType html setlocal        tabstop=2 softtabstop=2 shiftwidth=2 expandtab
augroup END

augroup filtype_css
  autocmd!
  autocmd FileType css setlocal         tabstop=2 softtabstop=2 shiftwidth=2 expandtab
  autocmd FileType css set omnifunc=csscomplete#CompleteCSS
augroup END

augroup filtype_javascript
  autocmd!
  autocmd FileType javascript setlocal  tabstop=2 softtabstop=2 shiftwidth=2 expandtab
augroup END

augroup filtype_json
  autocmd!
  autocmd FileType json setlocal        tabstop=2 softtabstop=2 shiftwidth=2 noexpandtab
augroup END

augroup filtype_make
  autocmd!
  autocmd FileType make setlocal        tabstop=8 softtabstop=8 shiftwidth=8 noexpandtab
augroup END

augroup filtype_yaml
  autocmd!
  autocmd FileType yaml setlocal        tabstop=2 softtabstop=2 shiftwidth=2 expandtab foldmethod=indent
augroup END

augroup filtype_gitcommit
  autocmd!
  autocmd FileType gitcommit setlocal        tabstop=2 softtabstop=2 shiftwidth=2 expandtab spell
augroup END

augroup filtype_text
  autocmd!
  autocmd FileType text setlocal        tabstop=2 softtabstop=2 shiftwidth=2 expandtab spell
augroup END

augroup filtype_markdown
  autocmd!
  autocmd FileType markdown setlocal        tabstop=2 softtabstop=2 shiftwidth=2 expandtab spell
augroup END

augroup filetyp_markdown
  autocmd!
  autocmd FileType markdown setlocal        tabstop=2 softtabstop=2 shiftwidth=2 noexpandtab
augroup END


