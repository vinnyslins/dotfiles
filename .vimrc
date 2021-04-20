" vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" plugins
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'pangloss/vim-javascript'
Plug 'vim-airline/vim-airline'

call plug#end()

" theme
set termguicolors
colorscheme gruvbox

" editor
set expandtab
set number
set smarttab
set smartindent
set shiftwidth=2
set tabstop=2
set bg=dark
