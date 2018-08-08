# vim-configuration
Base On Vim Is The Perfect IDE 
(https://dev.to/allanmacgregor/vim-is-the-perfect-ide-e80). 
This project aims to help setting up VIM C++ development environment. Thanks to Vim Is The Perfect IDE writen by 
Allan MacGrager
If you want more details, please read https://dev.to/allanmacgregor/vim-is-the-perfect-ide-e80.

Installation
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
