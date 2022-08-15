filetype on             " enable filetype detection
filetype plugin on      " load file-specific plugins
filetype indent on      " load file-specific indentation

:set guicursor=""
:set nowrap
:set number
:set relativenumber
:set tabstop=4
:set softtabstop=4
:set shiftwidth=4
:set autoindent
:set smarttab
:set mouse=a
:set clipboard=unnamedplus
:inoremap jk <Esc>
:cnoremap jk <Esc>
:let g:tex_flavor = "latex"

nnoremap <SPACE> <Nop>
let mapleader = "\<Space>"
nmap <Leader>q :q<CR>									# quit file
nmap <Leader>Q :q!<CR>									# quit file w/o saving
nmap <Leader>fs :w<CR>									# save file
nmap <Leader>fx :x<CR>									# save and exit at te safe time
nmap <Leader>pi :PlugInstall<CR>						# initiate PlugInstall
nmap <Leader>pu :PlugUpdate<CR>							# initiate PlugUpdate
nmap <Leader>so :source<CR>								# source/reload file
nmap <Leader>ue :UltiSnipsEdit<CR>						# UltiSnipsEdit
nmap <Leader>ur :call UltiSnips#RefreshSnippets()<CR>	# UltiSnips refresh

" Map `Y` to `y$` (copy from current cursor position to the end of the line),
" which makes Y work analogously to `D` and `C`.
" (Not vi compatible, and enabled by default on Neovim)
noremap Y y$

" Map `j` to `gj` and `k` to `gk`, which makes it easier to navigate wrapped lines.
noremap j gj
noremap k gk


" ----------------- [ Plugin Start ] --------------------
call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'
" Multiple Plug commands can be written in a single line using | separators

Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
	" Ultisnips
	let g:UltiSnipsExpandTrigger			= 'jl'	" use jk to expand snippets
	let g:UltiSnipsJumpForwardTrigger		= 'jl'	" use jk to jump forward a trigger
	let g:UltiSnipsJumpBackwardTrigger		= '<S-tab>'	" use jk to expand snippets

	" Use both `UltiSnips` and `MySnippets` as snippet directories
	"let g:UltiSnipsSnippetDirectories=[$HOME.".config/nvim/UltiSnips", "MySnippets"]
	"let g:UltiSnipsSnippetDirectories=[$HOME.".config/nvim/UltiSnips", "MySnippets"]
	let g:UltiSnipsSnippetDirectories=[$HOME."/.config/nvim/UltiSnips"]  " using Neovim
	
	let g:UltiSnipsEditSplit="vertical"

Plug 'lervag/vimtex'
Plug 'junegunn/fzf'
call plug#end()
" ------------------ [ Plugin End ] --------------------
