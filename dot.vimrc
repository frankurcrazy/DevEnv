set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

    Plugin 'scrooloose/nerdtree'
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'wesleyche/SrcExpl'
    Plugin 'wesleyche/trinity'
    Plugin 'majutsushi/tagbar'
    Plugin 'taglist.vim'
    Plugin 'chazy/cscope_maps'
    Plugin 'tpope/vim-fugitive'
    Plugin 'alvan/vim-closetag'
    
call vundle#end()            " required

filetype plugin indent on    " required

syntax on
set ts=4
set nu
set expandtab
set bg=dark
set tags=tags;
set omnifunc=syntaxcomplete#Complete
set ls=2
set hlsearch
set cursorline
set cursorcolumn
set shiftwidth=4
map <F12> :TagbarToggle<CR>
nmap <F7> :TrinityToggleAll<CR>
nmap <F8> :TagbarToggle<CR>

let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeGlyphReadOnly = "RO"
