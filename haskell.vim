
"""""""""""""""""""""""""""""""""""""""""""
"" Haskell config
"""""""""""""""""""""""""""""""""""""""""""

"set rtp+=~/.vim/pack/XXX/start/LanguageClient-neovim
"let g:LanguageClient_serverCommands = { 
"      \  'haskell': ['hie-wrapper', '--lsp'] 
"      \}
"let g:LanguageClient_rootMarkers = ['*.cabal', 'stack.yaml']


"hi link ALEError Error
"hi Warning term=underline cterm=underline ctermfg=Yellow gui=undercurl guisp=Gold
"hi link ALEWarning Warning
"hi link ALEInfo SpellCap

"let g:haskell_enable_quantification = 1 
"let g:haskell_enable_recursivedo = 1
"let g:haskell_enable_arrowsyntax = 1
"let g:haskell_enable_pattern_synonyms = 1
"let g:haskell_enable_typeroles = 1
"let g:haskell_enable_static_pointers = 1
"let g:haskell_backpack = 1


"nnoremap <F5> :call LanguageClient_contextMenu()<CR>
"map <Leader>lk :call LanguageClient#textDocument_hover()<CR>
"map <Leader>lg :call LanguageClient#textDocument_definition()<CR>
"map <Leader>lr :call LanguageClient#textDocument_rename()<CR>
"map <Leader>lf :call LanguageClient#textDocument_formatting()<CR>
"map <Leader>lb :call LanguageClient#textDocument_references()<CR>
"map <Leader>la :call LanguageClient#textDocument_codeAction()<CR>
"map <Leader>ls :call LanguageClient#textDocument_documentSymbol()<CR>

"set rtp+=~/.vim/pack/XXX/start/LanguageClient-neovim
"let g:gfm_syntax_enable_always = 0
"let g:gfm_syntax_enable_filetypes = ['markdown.gfm']
"autocmd BufRead,BufNew,BufNewFile README.md setlocal ft=markdown.gfm

"let g:vim_markdown_folding_disabled = 1

"function! RunGhci(type)
"    call VimuxRunCommand(" stack ghci && exit")
"    if a:type
"        call VimuxSendText(":l " . bufname("%"))
"        call VimuxSendKeys("Enter")
"    endif
"endfunction

"au FileType haskell nmap <silent><buffer> <leader>gh :call RunGhci(1)<CR>
"au FileType haskell nmap <silent><buffer> <leader>gs :call RunGhci(0)<CR>

"let g:hindent_on_save = 1
"let g:hindent_line_length = 80
"let g:hindent_indent_size = 4

"au FileType haskell nmap <silent><buffer> g<space> vii<ESC>:silent!'<,'> EasyAlign /->/<CR>

