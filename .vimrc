" Ryan Turner
" .vimrc

" Initialize pathogen plugin manager
call pathogen#infect() 

"""""""""""
" Options "
"""""""""""

set nocompatible                " Use vim settings
set ruler                       " Display ruler
set history=1000                " Increase command history; default is too small
set splitbelow                  " Put new splits below
set splitright                  " Put new splits to the right
set expandtab                   " Never insert tabs (TODO: except in Makefiles)
set tabstop=8                   " Keep real tabs at 8 spaces
set softtabstop=2               " Set smaller soft tabs
set shiftwidth=2                " Set smaller shift width
set switchbuf=usetab            " Prevent :make from hijacking buffer
set suffixesadd+=.tex           " Add .tex to filename for gf command
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
set hlsearch                    " Highlight search matches
set fileformats+=mac            " Enable ff detection for Excel CSV files

syntax on                       " Enable syntax highlighting

""""""""""""
" Mappings "
""""""""""""
let mapleader = ","

" Reflow paragraph and return cursor to starting position
nnoremap Q mqgqap`q
vnoremap Q gq

" Shift-Tab removes a tab (hopefully)
imap <S-Tab> <BS>

" Normal Mode Shift
nmap <Tab> >>
nmap <S-Tab> <<
vmap <Tab> >gv
vmap <S-Tab> <gv
vmap > >gv
vmap < <gv

" Edit vimrc with ,v; source it (in other windows/instances) with ,V
nmap <leader>v :tabedit $MYVIMRC<CR>
nmap <leader>V :source  $MYVIMRC<CR>

""""""""""""
" Autocmds "
""""""""""""
augroup vimrc
    autocmd!
    " Load vimrc changes on write
    autocmd BufWritePost .vimrc source $MYVIMRC
augroup end

