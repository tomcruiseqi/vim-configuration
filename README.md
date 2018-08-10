# vim-configuration
Base On Vim Is The Perfect IDE 
(https://dev.to/allanmacgregor/vim-is-the-perfect-ide-e80). 
This project aims to help setting up VIM C++ development environment. Thanks to Vim Is The Perfect IDE writen by 
Allan MacGrager
If you want more details, please read https://dev.to/allanmacgregor/vim-is-the-perfect-ide-e80.

1. Install Vundle. Refers to  https://github.com/VundleVim/Vundle.vim.

        git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vi
        Open Vim and type :PluginInstall

2. Install YouCompleteMe. Refers to https://valloric.github.io/YouCompleteMe/#ubuntu-linux-x64
   I need the c++ and go completer, so, download golang development tools using apt.
		
		sudo apt-get install golang (for ubuntu x64 18.04 LTS, the default golang package is go1.10.1, if you need the lastest golang, go to https://golang.org/dl/ and get what you want) 
		cd $HOME/.vim/bundle/YouCompleteMe
		install.sh --clang-completer --go-completer

3. Configuration of YCM

    I use bazel to build c++ projects. So first, I need a .ycm_extra_conf.py script to invoke bazel to get the compilation database, here i cloned the https://github.com/grailbio/bazel-compilation-database repository. Because --aspects option of bazel no longer supports bzl file path, so, I need to copy the .ycm_extra_conf.py and aspects.bzl to my bazel workspace. Don't use symbolic links, sometimes it fails.
    If there is no BUILD file in the workspace, create one in case of bazel failure.

	GoTo commands key map binding and some handful option settings.

4. How to create and show the tags.
	
	Use exuberant-ctags (In ubuntu just run: sudo apt-get install exuberant-ctags, and in OS X, just run brew install ctags)
	Use vim-easytags (https://github.com/xolox/vim-easytags) to generate ctag while creating, modifing and saving the files. By default, easytags saves tags to ~/.vimtags, but I made it happened in the directory of current file by the following commands:
			
			set tags=./tags                                             " Save the tags to directory of current file.
 			let g:easytags_dynamic_files = 1                            " Write to the first tags file seen by Vim.

	
	Use tagbar (https://github.com/majutsushi/tagbar) to constuct and present the tree of tags. And map the TagbarToggle command to <Leader>tt shortcut by:
			
			https://github.com/majutsushi/tagbar


