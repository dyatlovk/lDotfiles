"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" line numbers
:set number

:set gfn=Monospace\ 10
:set lsp=2

" set colorscheme
colorscheme neodark
let g:neodark#background = '#202020'
set background=dark

syntax enable
set tabstop=4
set nocursorline
set wildmenu
set exrc

" foldings
set foldenable
set foldlevelstart=1
set foldnestmax=1
set foldclose=all
set foldmethod=syntax
nnoremap <space> za

" 256-colors
set t_Co=256

" true-colors
if (empty($TMUX))
    if (has("nvim"))
        let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    endif
    if (has("termguicolors"))
        set termguicolors
    endif
endif

" GUI options
set guioptions-=T  "remove toolbar
set guioptions-=R  "remove right scrollbar
set guioptions-=L  "remove right scrollbar
set guioptions-=M  "remove menu

set nowrap
set colorcolumn=80


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" colorize BG HEX
:let g:colorizer_auto_color = 1

" filetypes
filetype indent on
filetype on

" set encodings
set fileencodings=utf8,cp1251
set encoding=utf8

" Set to auto read when a file is changed from the outside
set autoread

"Always show current position
set ruler

" Highlight search results
set hlsearch

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" mouse active
set mouse=a

" show runned command
set showcmd

" show tabs always
set showtabline=2

" auto complete
set completeopt=longest,menuone

" indent Lines setting
let g:indentLine_setColors=1
let g:indentLine_char='│'

let &colorcolumn=join(range(81,999),",")

"set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Gitgutter
let g:gitgutter_override_sign_column_highlight = 1

" Switch cpp<->h
noremap   \a        :A<CR>
inoremap  \a   <C-C>:A<CR>

" CtrlP
let g:ctrlp_lazy_update       = 1
let g:ctrlp_working_path_mode = 'w'
let g:ctrlp_match_window      = 'bottom,order:btt,min:1,max:20,results:20'
let g:ctrlp_extensions        = ['tag', 'buffertag', 'quickfix', 'dir', 'undo', 'line', 'changes', 'mixed', 'bookmarkdir', 'autoignore']
let g:ctrlp_custom_ignore     = {'dir':  'cmake-build-debug', 'file': '\v\.(exe)$',}

" NERDTree
let NERDTreeHighlightCursorline = 0
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

" Startify
"let g:startify_custom_header = [ ]
let g:startify_custom_footer = 'footer'
let g:startify_session_before_save = [
            \ 'echo "Cleaning up before saving.."',
            \ 'silent! NERDTreeClose'
            \ ]
let g:startify_session_persistence = 1
let g:startify_session_delete_buffers = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" show indent chars
set listchars=tab:··

" show specific chars
set list
if &listchars ==# 'eol:$'
    set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" set shift in '<' & '>'
set shiftwidth=4

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Keymap
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <C-t>         : tabnew         <CR>
imap <C-t>   <Esc> : tabnew         <CR> a
map  <S-TAB>       : tabprevious    <CR>
nmap <S-TAB>       : tabprevious    <CR>
imap <S-TAB> <Esc> : tabprevious    <CR> i
map  <C-TAB>       : tabnext        <CR>
nmap <C-TAB>       : tabnext        <CR>
imap <C-TAB> <Esc> : tabnext        <CR>
map  <F12>         : NERDTreeToggle <CR>
map  <F10>         : qa             <CR>
nmap <F8>          : TagbarToggle   <CR>

let g:move_key_modifier = 'C'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Vundle
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'Yggdroot/indentLine'
Plugin 'vim-airline/vim-airline'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'matze/vim-move'
Plugin 'valloric/youcompleteme'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-fugitive'
Plugin 'majutsushi/tagbar'
Plugin 'c.vim'
Plugin 'a.vim'
Plugin 'godlygeek/tabular'
Plugin 'mkitt/tabline.vim'
Plugin 'mhinz/vim-startify'
Plugin 'KeitaNakamura/neodark.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
autocmd BufReadPre *.odt,*.odp silent set ro
autocmd BufReadPost *.odt,*.odp silent %!odt2txt "%"
