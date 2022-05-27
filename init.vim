source <sfile>:h/plug.vim

syntax on
filetype plugin indent on
set noswapfile
set nowritebackup
set mouse:a
set hidden
set number
set nowrap
set updatetime=300
set shortmess+=c
set signcolumn=yes
set smarttab
set cindent
set tabstop=2
set shiftwidth=2
set expandtab
set background=dark
colorscheme hybrid_material

let g:netrw_banner = 0
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'
let g:netrw_localcopydircmd = 'cp -r'
let g:enable_bold_font = 1
let g:enable_italic_font = 1

nnoremap <leader>dd :Lexplore %:p:h<CR>
nnoremap <Leader>da :Lexplore<CR>


nnoremap <leader>fp <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

let g:coc_global_extensions = [
   \ 'coc-snippets',
   \ 'coc-pairs',
   \ 'coc-webpack',
   \ 'coc-tsserver',
   \ 'coc-solidity',
   \ 'coc-eslint',
   \ 'coc-rust-analyzer',
   \ 'coc-css',
   \ 'coc-jest',
   \ 'coc-prettier', 
   \ 'coc-json', 
   \ 'coc-clangd', 
   \ 'coc-rls', 
   \ 'coc-go', 
   \ 'coc-lists', 
   \ 'coc-cmake', 
   \ 'coc-docker', 
   \ 'coc-react-refactor',
   \ 'coc-github',
   \ ]
" https://www.npmjs.com/package/coc-react-refactor
" https://www.npmjs.com/package/coc-coverage
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

nnoremap <silent> K :call CocAction('doHover')<CR>

function! ShowDocIfNoDiagnostic(timer_id)
  if (coc#float#has_float() == 0 && CocHasProvider('hover') == 1)
    silent call CocActionAsync('doHover')
  endif
endfunction

function! s:show_hover_doc()
  call timer_start(500, 'ShowDocIfNoDiagnostic')
endfunction

autocmd CursorHoldI * :call <SID>show_hover_doc()
autocmd CursorHold * :call <SID>show_hover_doc()
autocmd CursorHold * silent call CocActionAsync('highlight')

command! -nargs=0 Prettier :CocCommand prettier.formatFile

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent> <space>d :<C-u>CocList diagnostics<cr>
nnoremap <silent> <space>s :<C-u>CocList -I symbols<cr>

xmap <C-F> <Plug>(coc-format-selected)
nmap <leader>do <Plug>(coc-codeaction)
nmap <leader>rn <Plug>(coc-rename)

" Git Blame


augroup mygroup
  autocmd!
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" #############
" Telescope
" #############

lua << EOF
require('telescope').setup({  
  defaults = { 
    preview = false,
    file_ignore_patterns = { 
      "node_modules",
      "artifacts"
    }
  }
})

EOF

" #############

"xmap <leader>a  <Plug>(coc-codeaction-selected)
"nmap <leader>a  <Plug>(coc-codeaction-selected)

"nmap <leader>ac  <Plug>(coc-codeaction)
"nmap <leader>qf  <Plug>(coc-fix-current)

"xmap if <Plug>(coc-funcobj-i)
"xmap af <Plug>(coc-funcobj-a)
"omap if <Plug>(coc-funcobj-i)
"omap af <Plug>(coc-funcobj-a)
"command! -nargs=0 Format :call CocAction('format')

"command! -nargs=? Fold :call     CocAction('fold', <f-args>)

"command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

"set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

"nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
"nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
"nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
"nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
"nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
"nnoremap <silent> <space>j  :<C-u>CocNext<CR>
"nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
"nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
let g:closetag_filetypes = 'html,xhtml,phtml'
let g:closetag_xhtml_filetypes = 'xhtml,jsx'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

"
let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'


let g:python3_host_prog = '/opt/homebrew/bin/python3'



"""
nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>
nmap <leader>gs :G<CR>
"""

let g:blamer_enabled = 1

