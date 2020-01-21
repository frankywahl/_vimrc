" All files are located in ~/.vim/plugin

" My preferred leader key
let mapleader=","

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-plug'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-rails', { 'for': ['ruby'] }
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'altercation/vim-colors-solarized'
Plug 'sjl/gundo.vim'
Plug 'scrooloose/nerdtree'
Plug 'w0rp/ale'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'mileszs/ack.vim'
Plug 'dbakker/vim-lint'
Plug 'godlygeek/tabular'
Plug 'tomtom/tlib_vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'slim-template/vim-slim', { 'for': ['slim'] }
Plug 'thoughtbot/vim-rspec', { 'for': ['ruby'] }
Plug 'jgdavey/tslime.vim'
Plug 'suan/vim-instant-markdown', { 'for': ['markdown'] }
Plug 'scrooloose/nerdcommenter'
Plug 'majutsushi/tagbar'
Plug 'Shougo/neocomplete.vim'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries', 'for': ['go'] }
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --go-completer', 'for': ['go'] }
Plug 'nsf/gocode', {'rtp': 'vim/', 'for': ['go'] }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all --bin' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'

" All of your Plugs must be added before the following line
"
" Initialize plugin system
call plug#end()            " required
