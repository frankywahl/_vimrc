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
augroup END
