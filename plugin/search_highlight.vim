"=====[ Highlight matches when jumping to next ]=============
nnoremap <silent> n n:call HLNext(1.0)<cr>
nnoremap <silent> N N:call HLNext(1.0)<cr>

"=====[ Highlight the match in red ]============= 
function! HLNext (blinktime)
  highlight WhiteOnRed ctermfg=red ctermbg=white
  let [bufnum, lnum, col, off] = getpos('.')
  let matchlen = strlen(matchstr(strpart(getline('.'),col-1),@/)) 
  let target_pat = '\c\%#'.@/
  let ring = matchadd('WhiteOnRed', target_pat, 101)
  redraw
  exec 'sleep ' . float2nr(a:blinktime * 1000) . 'm'
  call matchdelete(ring)
  redraw
endfunction

""=====[ Briefly hide everything except the match ]=============
"function! HLNext (blinktime)
"  highlight BlackOnBlack ctermfg=black ctermbg=black
"  let [bufnum, lnum, col, off] = getpos('.')
"  let matchlen = strlen(matchstr(strpart(getline('.'),col-1),@/)) 
"  let hide_pat = '\%<'.lnum.'l.'
"    \ . '\|'
"    \ . '\%'.lnum.'l\%<'.col.'v.'
"    \ . '\|'
"    \ . '\%'.lnum.'l\%>'.(col+matchlen-1).'v.' 
"    \ . '\|'
"    \ . '\%>'.lnum.'l.'
"  let ring = matchadd('BlackOnBlack', hide_pat, 101)
"  redraw
"  exec 'sleep ' . float2nr(a:blinktime * 1000) . 'm' 
"  call matchdelete(ring)
"  redraw
"endfunction


""=====[ Blink a red ring around the match ]=============
"function! HLNext (blinktime)
"  highlight RedOnRed ctermfg=red ctermbg=red
"  let [bufnum, lnum, col, off] = getpos('.')
"  let matchlen = strlen(matchstr(strpart(getline('.'),col-1),@/)) 
"  echo matchlen
"  let ring_pat = (lnum > 1 ? '\%'.(lnum-1).'l\%>'
"    \ . max([col-4,1]) .'v\%<'.(col+matchlen+3).'v.\|' : '') 
"    \ . '\%'.lnum.'l\%>'.max([col-4,1]) .'v\%<'.col.'v.'
"    \ . '\|'
"    \ . '\%'.lnum.'l\%>'.max([col+matchlen-1,1])
"    \ . 'v\%<'.(col+matchlen+3).'v.'
"    \ . '\|'
"    \ . '\%'.(lnum+1).'l\%>'.max([col-4,1]) 
"    \ . 'v\%<'.(col+matchlen+3).'v.'
"  let ring = matchadd('RedOnRed', ring_pat, 101) 
"  redraw
"  exec 'sleep ' . float2nr(a:blinktime * 1000) . 'm' 
"  call matchdelete(ring)
"  redraw 
"endfunction
