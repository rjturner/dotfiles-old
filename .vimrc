" Ryan Turner
" .vimrc

" Initialize pathogen plugin manager
call pathogen#infect() 

"""""""""""
" Options "
"""""""""""

set nocompatible                " Use vim settings
set ruler                       " Display ruler
set splitbelow                  " Put new splits below
set splitright                  " Put new splits to the right
set expandtab                   " Never insert tabs (TODO: except in Makefiles)
set tabstop=8                   " Keep real tabs at 8 spaces
set softtabstop=2               " Set smaller soft tabs
set shiftwidth=2                " Set smaller shift width
set wildmenu                    " Enhance tab completion
set suffixes+=*.pdf             " Files to demote in wildmenu
set wildignore+=*.out           " Files to ignore in wildmenu
set wildignore+=*.toc           " Files to ignore in wildmenu
set wildignore+=*.bbl           " Files to ignore in wildmenu
set wildignore+=*.blg           " Files to ignore in wildmenu
set wildignore+=*.aux           " Files to ignore in wildmenu
set wildignore+=*.log           " Files to ignore in wildmenu
set modeline                    " Look for vim settings in file
set modelines=3                 " ...in first or last 3 lines

syntax on                       " Enable syntax highlighting

""""""""""""
" Autocmds "
""""""""""""

" Load vimrc changes on write
autocmd! BufWritePost .vimrc source %
