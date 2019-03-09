set title
set titleold="Terminal"
set titlestring=%F
"set colorcolumn=79
set nowrap
set nobackup
set noswapfile
set fileformats=unix,dos,mac
set backspace=indent,eol,start
set encoding=utf-8
set fileencoding=utf-8
set autochdir
set cursorline
set confirm
" search
set hlsearch
set smartcase
"Setting up tab settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set tabpagemax=20
set showtabline=4
set autoindent
set expandtab
set smartindent
set smarttab
set wildmenu
set wildmode=list:longest
set guioptions-=T
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
" status
set showmatch
set showmode
set showcmd
set laststatus=2
set statusline=[%l,%v\ %P%M]\ %f\ %r%h%w\ (%{&ff})\ %{fugitive#statusline()}
" Cursor
set gcr=a:blinkon0
set scrolloff=3
" No beep
set noeb vb t_vb=
"*****************************************************************************
"" Visual Settigns
"*****************************************************************************
syntax on
set bg=dark
colorscheme onedark
set ruler
set number

let no_buffers_menu=1
set mousemodel=popup
set mouse=a
set t_Co=256
set guioptions=egmrt
set gfn=Monospace\ 8
