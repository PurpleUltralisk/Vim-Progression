# 03 - Configuring Vim
Consider using Neovim, which has lots of features vs. default Vim. 
`sudo apt install neovim`

To install vim-plug:
Follow the official vim-plug tutorial. The script will automatically create the necessary folders and files. 
For Neovim:
```bash
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --creat-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

To configure Vim: `vim ~/.vimrc`
To configure NeoVim: `vim ~/.config/nvim/init.vim`

Copy the following into the respective files:
For Vim:
```bash
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://rawgithubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'joshdick/onedark.vim'
call plug#end()
``` 

For NeoVim: 
```bash
call plug#begin('~/.local/share/nvim/site/plugged')

" Declare the list of plugins
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'joshdick/onedark.vim'
call plug#end()

syntax on
colorscheme onedark
```
