set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" SimpylFold
Plugin 'tmhedberg/SimpylFold'

" IdentPython
Plugin 'vim-scripts/indentpython.vim'

" Search
Plugin 'https://github.com/ctrlpvim/ctrlp.vim'

" Commentary
Plugin 'https://github.com/tpope/vim-commentary'

" Git
Plugin 'tpope/vim-fugitive'

" Powerline
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" PythonSense
Plugin 'https://github.com/jeetsukumaran/vim-pythonsense'

" ALE
Plugin 'dense-analysis/ale'

" File Browsing
Plugin 'scrooloose/nerdtree'
Plugin 'https://github.com/Xuyuanp/nerdtree-git-plugin'
Plugin 'ryanoasis/vim-devicons'
Plugin 'jistr/vim-nerdtree-tabs'

" AutoSave
Plugin 'https://github.com/vim-scripts/vim-auto-save'

" Colors
Plugin 'sonph/onehalf', { 'rtp': 'vim' }

call vundle#end()            " required
filetype plugin indent on    " required

" On split
set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

nnoremap <space> za

let g:SimpylFold_docstring_preview=1

" py and pyw spaces
au BufNewFile,BufRead *.py,*pyw set tabstop=4
au BufNewFile,BufRead *.py,*pyw set softtabstop=4
au BufNewFile,BufRead *.py,*pyw set shiftwidth=4
au BufNewFile,BufRead *.py,*pyw set textwidth=79
au BufNewFile,BufRead *.py,*pyw set expandtab
au BufNewFile,BufRead *.py,*pyw set autoindent
au BufNewFile,BufRead *.py,*pyw set fileformat=unix

au BufRead *.py,*pyw set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

" httml, css, js spaces
au BufNewFile,BufRead *.html,*css,*js set tabstop=2
au BufNewFile,BufRead *.html,*css,*js set softtabstop=2 
au BufNewFile,BufRead *.html,*css,*js set shiftwidth=2
au BufNewFile,BufRead *.html,*css,*js set expandtab
au BufNewFile,BufRead *.html,*css,*js set autoindent

" Flagging Unnecessary Whitespace
" autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``

" Settings vim
set t_Co=256
set termencoding=utf-8
set showtabline=1
set nobackup
set noswapfile
set encoding=utf-8
set fileencodings=utf8,cp1251
set nu
syntax on
set clipboard=unnamed
set cursorline

" PythonSense
let g:is_pythonsense_alternate_motion_keymaps = 1

" ALE
let g:ale_linters = {'python': 'all'}
let g:ale_fixers = {'python': ['isort', 'yapf', 'remove_trailing_lines', 'trim_whitespace']}
let g:ale_lsp_suggestions = 1
" let g:ale_fix_on_save = 1
let g:ale_go_gofmt_options = '-s'
let g:ale_go_gometalinter_options = '— enable=gosimple — enable=staticcheck'
let g:ale_completion_enabled = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] [%severity%] %code: %%s'

" FileBrowser
let NERDTreeIgnore=['\.pyc$', '\~$']
au VimEnter * NERDTree
" let NERDTreeMapOpenInTab='<ENTER>'
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Colors
colorscheme onehalflight

" AutoSave
let g:auto_save = 1
