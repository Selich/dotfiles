call plug#begin('~/.vim/plugged')


"""
Plug 'tpope/vim-fugitive'

Plug 'vim-airline/vim-airline'
"""

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'dyng/ctrlsf.vim'

Plug 'APZelos/blamer.nvim'



" Github Explorer
Plug 'tpope/vim-rhubarb'

" Need to setup it a bit
Plug 'alvan/vim-closetag'

Plug 'neovim/nvim-lspconfig'

Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kristijanhusak/defx-git'
Plug 'kristijanhusak/defx-icons'

" Autopair {}
Plug 'windwp/nvim-autopairs'


Plug 'tami5/lspsaga.nvim', { 'branch': 'nvim6.0' }

Plug 'folke/lsp-colors.nvim'
Plug 'L3MON4D3/LuaSnip'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
Plug 'kyazdani42/nvim-web-devicons'
Plug 'onsails/lspkind-nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'windwp/nvim-ts-autotag'
Plug 'groenewege/vim-less', { 'for': 'less' }
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }

" Fuzzy search
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim'

" new to test
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Plug 'jghauser/kitty-runner.nvim'
Plug 'sunjon/shade.nvim'
Plug 'winston0410/range-highlight.nvim'
Plug 'winston0410/cmd-parser.nvim'
Plug 'jghauser/mkdir.nvim'

Plug 'sudormrfbin/cheatsheet.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'

Plug 'kyazdani42/nvim-web-devicons'
Plug 'yamatsum/nvim-nonicons'
Plug 'yamatsum/nvim-cursorline'

Plug 'crispgm/nvim-tabline'

Plug 'luukvbaal/stabilize.nvim'

Plug 'David-Kunz/jester'


""""""""

" Plug 'rhysd/vim-gfm-syntax'
" Plug 'godlygeek/tabular'
" Plug 'w0rp/ale'
" Plug 'rust-lang/rust.vim'

" Plug 'plasticboy/vim-markdown'

" Plug 'nvim-lua/plenary.nvim'

Plug 'jiangmiao/auto-pairs'

Plug 'ap/vim-css-color'
Plug 'luochen1990/rainbow'

Plug 'autozimu/LanguageClient-neovim', {
     \ 'branch': 'next',
     \ 'do': './install.sh'
     \ }

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'tpope/vim-commentary'
" Plug 'neomake/neomake'
" Plug 'alx741/vim-hindent'

" Plug 'airblade/vim-gitgutter'

" Plug 'itchyny/lightline.vim'

" Plug 'benmills/vimux'
" Plug 'liuchengxu/vista.vim'
" Plug 'scrooloose/nerdcommenter'
" Plug 'tomlion/vim-solidity'

" Plug 'neovimhaskell/haskell-vim'

" Plug 'christoomey/vim-tmux-navigator'

" Colorscheme
Plug 'kristijanhusak/vim-hybrid-material'

Plug 'tomasiser/vim-code-dark'

" Web Dev
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'

call plug#end()
