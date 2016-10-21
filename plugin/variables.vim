syntax on

filetype on
filetype plugin indent on

set term=builtin_ansi

set number          "displays line numbers

set wildmenu        " tab completion in menu at bottom

set nocompatible    " don't want vi compatibility

set autoindent      "indents lines based on previous lines
set cindent         " enable automatic indention

set tabstop=2       " tabstop,ts			: width of a tab character
set softtabstop=2   " Shifwidth,sw		: amount of white space to insert/remove using indentation commands in normal mode
set shiftwidth=2    " Softabstop, sws	: fine-tune amount of white space to be inserted
set expandtab       " Expandtab				: use spaces intead of tab characters

"all backups and swp files are stored together
set directory=~/.vim/swap//,.
set backupdir=~/.vim/backup//,./.backup

set ruler           " set ruler

" SEARCH
set incsearch       "sets incremental search
set ignorecase      " searching, ignore case of search
set smartcase       " be smart about it ;)
set hlsearch        "sets highlighting of search patterns


"sets backspace to work
set backspace=indent,eol,start

" Show $ at end of line and trailing space as ~
set listchars=tab:▸\ ,eol:$,trail:~,extends:>,precedes:<

set comments=sl:/*,mb:**,elx:*/   " enable automagic multi-line comments

set background=dark

"set virtualedit=all               "allows cursor to move on unedited space

" Fold according to syntax
set foldmethod=syntax
" A big number to start unfolded
set foldlevel=99

" Get compatible clipboard
set clipboard=unnamed

" Highlight the current line
set cursorline

" Mouse support
set mouse=a
set ttymouse=xterm2

" Color Scheme
if filereadable( expand("$HOME/.vim/bundle/vim-colors-solarized/colors/solarized.vim") )
  let g:solarized_termtrans = 1
  colorscheme solarized
endif

if has("autocmd")
  " Always treat .rss, .atom files as XML
  autocmd BufNewFile,BufRead *.rss,*.atom setfiletype xml
  autocmd BufNewFile,BufRead *.slim setfiletype slim
endif

" In case a shell command wants to open $EDITOR we use something
" that works from inside Vim.
let $EDITOR = '$VIM --nofork'

"====[ Make the 81st column stand out ]====================
highlight ColorColumn ctermbg=red
"set colorcolumn=81
call matchadd('ColorColumn', '\%81v', 100)


"======= File Stuff
" Java specific stuff
let java_highlight_all=1
let java_highlight_debug=1

let java_ignore_javadoc=1
let java_highlight_functions=1
let java_mark_braces_in_parens_as_errors=1

" highlight strings inside C comments
let c_comment_strings=1

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

let g:rspec_command = 'call Send_to_Tmux("bundle exec rspec {spec}\n")'
