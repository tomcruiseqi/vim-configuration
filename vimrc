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
let g:ycm_confirm_extra_conf = 0		" always run the found .ycm_extra_conf.py

" GoTo subcommands maps
nnoremap <Leader>h :YcmCompleter GoToInclude<CR>			" GoToInclude
nnoremap <Leader>d :YcmCompleter GoToDeclaration<CR>		" GoToDeclaration
nnoremap <Leader>m :YcmCompleter GoToDefinition<CR>			" GoToDefinition
nnoremap <Leader>j :YcmCompleter GoTo<CR>					" GoTo
nnoremap <Leader>k :YcmCompleter GoToImprecise<CR>			" GoToImprecise
nnoremap <Leader>t :YcmCompleter GetType<CR>				" GetType
nnoremap <Leader>r :YcmCompleter GetTypeImprecise<CR>		" GetTypeImprecise
nnoremap <Leader>p :YcmCompleter GetParent<CR>				" GetParent
nnoremap <Leader>c :YcmCompleter GetDoc<CR>					" GetDoc
nnoremap <Leader>f :YcmCompleter GetDocImprecise<CR>		" GetDocImprecise

" Refectoring and diagnosis configuration
let g:ycm_echo_current_diagnostic = 1	" always show the diagnostic messages.

nnoremap <Leader>di :YcmDiags<CR>							" YcmDiags
nnoremap <Leader>fi :YcmCompleter FixIt<CR>					" FixIt

" Where to show the result of GoTo* commands.
let g:ycm_goto_buffer_command = "new tab"

" Python interpreter for ycmd.
let g:ycm_python_binary_path = "/usr/local/bin/python3"

" Get identifiers from the tags files.
let g:ycm_collect_identifiers_from_tags_files = 1
