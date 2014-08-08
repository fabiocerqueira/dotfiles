" Key bindings
map <Leader>o :call TrimWhiteSpace()<CR>
" Ctrl+t open a new tab
nmap <C-t> :tabnew<CR>
noremap <C-l> :tabn<CR>
inoremap <C-l> <esc>:tabn<CR><Insert>
noremap <C-h> :tabprev<CR>
inoremap <C-h> <ESC>tabprev<CR><Insert>
" Ctrl+e close a current tab
nmap <C-e> :tabclose<CR>
map <F2> :NERDTree<CR>
map <F5> :!python %<CR>
map <F7> :set spell spelllang=pt<CR>
map <F8> :set nospell<CR>
map <C-J> <C-W>w
map <C-K> <C-W>W
" Comment Blocks
" ,c -> comment selected
" ,u -> uncomment selected
noremap <silent> ,c :s,^,<C-R>=comment<CR>,<CR>:noh<CR>
noremap <silent> ,u :s,^\V<C-R>=comment<CR>,,e<CR>:noh<CR>
"" Copy/Paste/Cut
noremap YY "+y<CR>
noremap P "+gP<CR>
noremap XX "+x<CR>
" pbcopy for OSX copy/paste
vmap <C-x> :!pbcopy<CR>
vmap <C-c> :w !pbcopy<CR><CR>
