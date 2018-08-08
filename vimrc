"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""     VIM Configuration of tomcruiseqi
"""""""""""""""""""""""     Inspired by Mr Allan Macgrager
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set encoding=utf-8

"""" START Vundle Configuration

" Disable file type for vundle
filetype off                  			" required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, 			" required
Plugin 'gmarik/Vundle.vim'

" C++ and Golang completer.
Plugin 'Valloric/YouCompleteMe'

call vundle#end()            			" required
filetype plugin indent on    			" required
"""" END Vundle Configuration 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 
" Configuration
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Show linenumbers				" Basic
set number

" Set Proper Tabs				" Basic
set tabstop=4

" Always display the status line		" Basic
set laststatus=2

" Enable highlighting of the current line
set cursorline

" Theme and Styling				" Basic
syntax on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" YouCompleteMe Configuration
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ycm_confirm_extra_conf = 0
