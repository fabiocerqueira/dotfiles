au FileType haskell,vhdl,ada            let comment = '-- '
au FileType sh,make,python              let comment = '# '
au FileType c,cpp,java,javascript       let comment = '// '
au FileType tex                         let comment = '% '
au FileType vim                         let comment = '" '
au BufNewFile,BufRead Makefile,makefile set ts=4 sw=4 noet
au FileType c set ts=4 sw=4 noet
au BufNewFile,BufRead *.go set filetype=go
au BufNewFile,BufRead *.fcgi,*.wsgi set filetype=python
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8 colorcolumn=79
    \ formatoptions+=croq softtabstop=4 smartindent
    \ cinwords=if,elif,else,for,while,try,except,finally,def,class,with
au FileType python set ft=python.django " For SnipMate
au FileType html set ft=htmldjango.html " For SnipMate
" Remember last location in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif
