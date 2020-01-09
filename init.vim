" Modeline and Notes {
" vim: set foldmarker={,} foldlevel=0 foldmethod=marker spell:
"}

" Plugins {

	" Plugins will be downloaded under the specified directory.
	call plug#begin('~/.vim/plugged')

	" Declare the list of plugins.
	" a wiki engine for vim
	"Plug 'vimwiki/vimwiki'
	" lightweight status bar at the bottom of vim
	Plug 'itchyny/lightline.vim'
	Plug 'w0rp/ale'
	" visual indent guides for your code
	Plug 'nathanaelkane/vim-indent-guides'
	" quick and easy multi line commenting
	Plug 'scrooloose/nerdcommenter'
	" will beautify code
	Plug 'Chiel92/vim-autoformat'
	" makes vim folding work for python
	Plug 'tmhedberg/SimpylFold'
	" provides the current git branch to lightline
	Plug 'itchyny/vim-gitbranch' 
	" a snippet engine
	Plug 'SirVer/ultisnips'
	" snippets for various programming languages
	Plug 'honza/vim-snippets'
	" fuzzy completion for vim and cli
	Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
	Plug 'junegunn/fzf.vim'
	" visual shortcut tags for navigation
	Plug 'easymotion/vim-easymotion'
	" gruvbox color theme
	Plug 'morhetz/gruvbox'
	" automatically open the auto completion pop up when certain characters are
	" entered
	Plug 'vim-scripts/AutoComplPop'
	" pandoc flavor markdown syntax highlighting
	Plug 'vim-pandoc/vim-pandoc'
	Plug 'vim-pandoc/vim-pandoc-syntax' 
	" markdown preview in the browser
	" if you don't have nodejs and yarn, use pre build
	Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}
	" git wrapper
	Plug 'tpope/vim-fugitive'
	" go language support
	Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
	" surround items with parentheses
	Plug 'tpope/vim-surround'
	" automatically add matching pairs for brackets, etc.
	Plug 'jiangmiao/auto-pairs'
	" integrate ack with vim
	Plug 'mileszs/ack.vim'

	" List ends here. Plugins become visible to Vim after this call.
	call plug#end()
	
"}

" Themes and Colors {

	" set gruvbox them contrast preference
	let g:gruvbox_contrast_dark = 'hard'

	" set vim theme to gruvbox
	colorscheme gruvbox

	" set for proper colors
	set termguicolors

"}

" Global {

	" disable vi compatibility
	set nocompatible

	" enable file type identification so vim can do intelligent things with it
	filetype plugin on

	" enable syntax highlighting
	syntax on

	" Enable line numbers
	set number

	" Set vim clipboard to the system clipboard
	set clipboard=unnamed
	set clipboard=unnamedplus

	" Set the default system shell to be BASH instead of fish
	set shell=/bin/bash

	" Set it so that when VIM starts, files are not folded when opened
	set nofoldenable

"}

" VIM Keyboard Shortcuts {

	" Set custom Leader key
	let mapleader = "\<Space>"

	" Close a buffer
	nnoremap <silent> <leader>bd :bd<CR>

	" Quit Nvim
	nnoremap <silent> <leader>qq :q<CR>

	" Save File
	nnoremap <silent> <leader>fs :w<CR>

	" Refresh all buffers
	nnoremap <silent> <leader>rr :bufdo e<CR>

	" Open netrw 
	nnoremap <silent> <leader>fe :Explore<CR>

	" Edit vimrc configuration file
	noremap <leader>ve :e $MYVIMRC<CR>
	" Reload vimrc configuration file
	noremap <leader>vr :source $MYVIMRC<CR>

	" Horizontal Split
	nnoremap <silent> <leader>w. :split<CR>

	" Vertical Split
	nnoremap <silent> <leader>w/ :vsplit<CR>

	" Close a Split
	nnoremap <silent> <leader>wd <C-w>q<CR>

	" Move between splits quicker
	noremap <silent> <C-k> :wincmd k<CR>
	noremap <silent> <C-j> :wincmd j<CR>
	noremap <silent> <C-h> :wincmd h<CR>
	noremap <silent> <C-l> :wincmd l<CR>

	" Resize splits
	noremap <silent> <C-up> :resize +5<CR>
	noremap <silent> <C-down> :resize -5<CR>
	noremap <silent> <C-left> :vertical resize +5<CR>
	noremap <silent> <C-right> :vertical resize -5<CR>

	" Maximize and minimize a split
	nnoremap <leader>M <C-W>\| <C-W>_
	nnoremap <leader>m <C-W>=	

	" Change from terminal to normal mode easily
	tnoremap <C-[> <C-\><C-n>

	" Open the quick fix window
	noremap <silent> <leader>cl :clist<CR>

	" }

" Plugin Specific Configuration {

	" FZF Configuration {
	
		let g:fzf_nvim_statusline = 0 " disable statusline overwriting

		nnoremap <silent> <leader>ff :Files<CR>
		nnoremap <silent> <leader>fh :Files ~<CR>
		nnoremap <silent> <leader>fw :Files ~/Dropbox/wiki/<CR>
		nnoremap <silent> <leader>bb :Buffers<CR>
		nnoremap <silent> <leader>; :BLines<CR>
		nnoremap <silent> <leader>o :BTags<CR>
		nnoremap <silent> <leader>O :Tags<CR>
		nnoremap <silent> <leader>? :History<CR>

	"}

	" easymotion Configuration {
	
		" <Leader>f{char} to move to {char}
		map  <Leader>jj <Plug>(easymotion-bd-f)
		nmap <Leader>jj <Plug>(easymotion-overwin-f)

		" Move to line
		map <Leader>jl <Plug>(easymotion-bd-jk)
		nmap <Leader>jl <Plug>(easymotion-overwin-line)

		" Move to word
		map  <Leader>jw <Plug>(easymotion-bd-w)
		nmap <Leader>jw <Plug>(easymotion-overwin-w)

	"}
	
	"  vim-fugitive Configuration {

		nnoremap <silent> <leader>gs :Gstatus<CR>
		nnoremap <silent> <leader>gc :Gcommit<CR>
		nnoremap <silent> <leader>gu :Gpull<CR>
		nnoremap <silent> <leader>gp :Gpush<CR>

	"}
	
	" ack.vim Configuration {
	
	nnoremap <silent> <leader>ss :Ack
	
	" }
	
	"  lightline Configuration {

		" Needed for lightline status bar to be shown
		set laststatus=2
		" Configure lightline to show the git branch
		let g:lightline = {
		      \ 'active': {
		      \   'left': [ [ 'mode', 'paste' ],
		      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
		      \ },
		      \ 'component_function': {
		      \   'gitbranch': 'gitbranch#name'
		      \ },
		      \ 'colorscheme' : 'gruvbox',
		      \ }
	"}
	
	" Markdown Configuration {

		" set syntax highlighting for markdown files
		augroup pandoc_syntax
		    au! BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc
		augroup END

		" do not close the preview tab when switching to other buffers
		let g:mkdp_auto_close = 0

		" setup markdown preview shortcut
		nnoremap <silent> <leader>pp :MarkdownPreview<CR>

	"}

	" Python Configuration {

		" All of the options below were taken from the following site
		" http://liuchengxu.org/posts/use-vim-as-a-python-ide/

		" Set shortcut to trigger AutoFormat
		noremap <leader>= :Autoformat<CR>

		" Enable indent guides
		let g:indent_guides_enable_on_vim_startup = 0
		" Set indent guides color
		set background=dark

		" Set flake8 ignores
		let g:ale_python_flake8_options = '--ignore=F403,F405'
		" Set flake8 as the main ale linter
		let g:ale_linters = {'python': ['flake8']}

		" Set UltiSnip expansion shortcuts
		let g:UltiSnipsExpandTrigger="<tab>"
		let g:UltiSnipsJumpForwardTrigger="<c-x>"
		let g:UltiSnipsJumpBackwardTrigger="<c-z>"

	"}

	" vimwiki Configuration {

		" Set vimwiki working path and set syntax to Markdown
		"let g:vimwiki_list = [{'path': '~/Dropbox/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
		
	"}

"}
