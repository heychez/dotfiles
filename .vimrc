"----------- vundle config --------------
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'scrooloose/nerdtree' " files/folders tree
Plugin 'tpope/vim-fugitive' " git tool
Plugin 'scrooloose/syntastic' " syntax checking
Plugin 'tpope/vim-surround' " surrounding brackets, etc
Plugin 'powerline/powerline' " statusline bar
"Plugin 'altercation/vim-colors-solarized' " color scheme
 
call vundle#end()
filetype plugin indent on

"----------------------------------------
"------------ Vim config ----------------
"----------------------------------------
syntax on
colorscheme slate

" Show “invisible” characters
"set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
"set list

" solarized
"colorscheme solarized

"if has('gui_running')
"	set background=dark
"else
"	set background=light
"	set t_Co=16
"	let g:solarized_termcolors=16
"endif


set tabstop=4 shiftwidth=4 softtabstop=4 " set expandtab
set clipboard=unnamedplus " copy to clipboard
set number " display line numbers

"----------- NerdTree config ------------
" NerdTree key mapping
map <silent> <C-n> :NERDTreeToggle<CR>

" enable line numbers
"let NERDTreeShowLineNumbers=1
" make sure relative line numbers are used
"autocmd FileType nerdtree setlocal relativenumber

"---------- Syntastic config ------------
" config recommended
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers = ['jshint']

"------------- Powerline ---------------
"set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
" Always show statusline
"set laststatus=2













