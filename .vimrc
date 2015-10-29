set nocompatible " disable vi compatibility

set number " display line numbers
syntax enable " enable syntax processing
set tabstop=4 " sets a TAB to appear as 4 spaces
set softtabstop=4 " makes a TAB be 4 spaces when editing
set expandtab " tabs are inserted as spaces
set cursorline " highlight current line
set wildmenu " visual autocomplete for command menu
set lazyredraw " redraw only when we need to
set showmatch " highlight matching {[()]}
set incsearch " search as characters are entered
set hlsearch " highlight matches
set foldenable " enable folding
set foldlevelstart=10 " open most folds by default
set foldnestmax=10 " 10 nested fold max
set foldmethod=indent " fold based on indent level
" move vertically by visual line
nnoremap j gj
nnoremap k gk

call plug#begin('~/.vim/bundle')
Plug 'scrooloose/syntastic'
Plug 'taketwo/vim-ros'
Plug 'tpope/vim-fugitive'
Plug 'Valloric/YouCompleteMe'
call plug#end()
