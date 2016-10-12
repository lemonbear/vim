execute pathogen#infect()

set nocompatible
filetype off

"Keymaps
let mapleader=","
let maplocalleader=","

:inoremap <esc> <nop>
:inoremap jk <esc> 

:nnoremap <space> viw 
:nnoremap vs :vsplit 
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
:nnoremap <leader>sv :source $MYVIMRC<cr>
"Surrounds current work in quotes
:nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel 
:nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
:nnoremap <leader>[ viw<esc>a]<esc>hbi[<esc>lel

"Shortcuts for copy and pasting
:nnoremap <leader>ya ma gg"*yG `a
:nnoremap <leader>yy "*yy
:nnoremap <leader>p "*p

"Comments out this line of code
:nnoremap <leader>c  I// <esc> j^
:nnoremap <leader>-  I-- <esc> j^

"Bookmarks current location before searching
:nnoremap / ma/
:nnoremap ? ma?

:onoremap p i(
"Sets up look and feel
:set nu
:colorscheme slate
:set guifont=Consolas:h10
:syntax on
:set tabstop=4
:set autoindent
:set listchars=tab:`\ ,eol:¬
:set list

"Sets find to smartcase
:set ignorecase
:set autoread

"Sets file encoding
:set encoding=utf-8
:setglobal fileencoding=utf-8


function! FindAndCenter()
		call inputsave()
		let findValue = input('Enter search term ')
		call inputrestore()
		execute '/'findValue 
		echo findValue
endfunction
