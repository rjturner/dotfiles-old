" Ryan Turner
" .vimrc

" Initialize pathogen plugin manager
call pathogen#infect() 

"""""""""""
" Options "
"""""""""""

syntax on                       " Enable syntax highlighting
set ruler                       " Display ruler
set splitbelow                  " Put new splits below
set splitright                  " Put new splits to the right
set wildmenu                    " Enhance tab completion
set modeline                    " Look for vim settings in file
set modelines=3                 " ...in first or last 3 lines

""""""""""""
" Autocmds "
""""""""""""

" Load vimrc changes on write
autocmd! BufWritePost .vimrc source %
