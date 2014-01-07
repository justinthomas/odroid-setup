" associate *.launch with xml filetype
au BufRead,BufNewFile *.launch setfiletype xml

syntax on
set nocompatible
filetype plugin indent on
set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab
set background=dark
set number
set ls=2


" Wildmenu
if has("wildmenu")
  set wildignore+=*.a,*.o
  set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png
  set wildignore+=.DS_Store,.git,.hg,.svn
  set wildignore+=*~,*.swp,*.tmp
  set wildmenu
  set wildmode=longest,list
endif
