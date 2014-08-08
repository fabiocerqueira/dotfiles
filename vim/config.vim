syntax on
set bg=dark
colorscheme gruvbox
" set colorcolumn=80
set title
set titleold="Terminal"
set titlestring=%F
set ruler
set nu
set mouse=a
set nowrap
set nobackup
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
