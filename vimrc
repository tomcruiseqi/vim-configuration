"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                 VIM Configuration of tomcruiseqi
"                  Inspired by Mr Allan Macgrager
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
Plugin 'tpope/vim-dispatch'				" Run tasks asynchronously.
Plugin 'xolox/vim-misc'					" Standard vim-library for xolox's other vim-plugins
Plugin 'xolox/vim-easytags'				" Auto-generator of tags using exuberant-ctags
Plugin 'majutsushi/tagbar'				" Show tags in seperate sub-window
Plugin 'octol/vim-cpp-enhanced-highlight'			" Cpp syntax highlighting for c and c++ 11/14/17

" User Interface optimization
Plugin 'morhetz/gruvbox'				" Wonderful vim color scheme
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'			" Explorer of files.
Plugin 'ryanoasis/vim-devicons'			" Fonts and icons for nerdtree
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'	" Nerd tree icons of folder and file
Plugin 'ervandew/supertab'				" Allow for all of the insert completion using tab key.

" Git support
Plugin 'tpope/vim-fugitive'				" Run git commands and show the result in vim
Plugin 'godlygeek/tabular'				" Needed by vim-markdown
Plugin 'plasticboy/vim-markdown'		" Viewing and writing markdown files.

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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" User Interface settings
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
colorscheme gruvbox
set background=dark										" Dark mode



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 
" Gruvbox configurationn
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> [oh :call gruvbox#hls_show()<CR>
nnoremap <silent> ]oh :call gruvbox#hls_hide()<CR>
nnoremap <silent> coh :call gruvbox#hls_toggle()<CR>

nnoremap * :let @/ = ""<CR>:call gruvbox#hls_show()<CR>*
nnoremap / :let @/ = ""<CR>:call gruvbox#hls_show()<CR>/
nnoremap ? :let @/ = ""<CR>:call gruvbox#hls_show()<CR>?



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 
" vim-cpp-enhanced-highlight configurationn
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:cpp_class_scope_highlight = 1						" Class scope highlight
let g:cpp_member_variable_highlight = 1					" Member variables highlight
let g:cpp_class_decl_highlight = 1						" Class name in declaration highlight
let g:cpp_experimental_simple_template_highlight = 1	" Most cases of template highlight
let g:cpp_concepts_highlight = 1						" Key words concept and requires highlight



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" YouCompleteMe Configuration
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ycm_confirm_extra_conf = 0		" always run the found .ycm_extra_conf.py

" GoTo subcommands maps
nnoremap <Leader>h :tab YcmCompleter GoToInclude<CR>			" GoToInclude
nnoremap <Leader>d :tab YcmCompleter GoToDeclaration<CR>		" GoToDeclaration
nnoremap <Leader>m :tab YcmCompleter GoToDefinition<CR>			" GoToDefinition
nnoremap <Leader>j :tab YcmCompleter GoTo<CR>					" GoTo
nnoremap <Leader>k :tab YcmCompleter GoToImprecise<CR>			" GoToImprecise
nnoremap <Leader>t :YcmCompleter GetType<CR>					" GetType
nnoremap <Leader>r :YcmCompleter GetTypeImprecise<CR>			" GetTypeImprecise
nnoremap <Leader>p :YcmCompleter GetParent<CR>					" GetParent
nnoremap <Leader>c :YcmCompleter GetDoc<CR>						" GetDoc
nnoremap <Leader>f :YcmCompleter GetDocImprecise<CR>			" GetDocImprecise

" Refectoring and diagnosis configuration
let g:ycm_echo_current_diagnostic = 1	" always show the diagnostic messages.

nnoremap <Leader>di :YcmDiags<CR>							" YcmDiags
nnoremap <Leader>fi :YcmCompleter FixIt<CR>					" FixIt

" Where to show the result of GoTo* commands.
let g:ycm_goto_buffer_command = "split"

" Python interpreter for ycmd.
let g:ycm_python_binary_path = "/usr/local/bin/python3"

" Get identifiers from the tags files.
let g:ycm_collect_identifiers_from_tags_files = 1



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" vim-easytags plugin configuration
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:easytags_asyn = 1										" Asyn

set tags=./tags                                             " Save the tags to directory of current file.
let g:easytags_dynamic_files = 1							" Write to the first tags file seen by Vim.



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" tagbar configuration
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <Leader>tt :TagbarToggle<CR>						" Show tag tree in another sub-window.



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Airline configuration
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline#extensions#tabline#enabled = 1 				" Display all buffers when there is only one tab open.
let g:airline#extensions#tabline#formatter = 'default'		" Default formatter of tabline

let g:airline_powerline_fonts = 1							" Show the nicer powerline symbols.
let g:airline_theme = "papercolor"							" Use the papercolor.
let g:airline_skip_empty_sections = 1						" Skip the empty section and don't show the angle at the end.



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 
" NERDTree configuration
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <Leader>nn :NERDTreeToggle<CR>							" Show nerdtree.



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 
" Vim-markdown configuration
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:vim_markdown_folding_disabled = 1						" Disable folding.
