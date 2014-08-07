"Bad whitespaces
autocmd BufEnter * highlight BadWhitespace ctermbg=red guibg=red
autocmd BufEnter * match BadWhitespace /^\t\+/
autocmd BufEnter * match BadWhitespace /\s\+$/
" Removes trailing spaces
function TrimWhiteSpace()
    %s/\s*$//
        ''
:endfunction
