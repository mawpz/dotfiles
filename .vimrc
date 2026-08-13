"
" ~/.vimrc
"

syntax on
filetype plugin on
set encoding=utf-8
set mouse=a
set cursorline
set number relativenumber
set laststatus=2
set noshowmode
set splitbelow
" set cc=80

call plug#begin()
Plug 'valloric/youcompleteme'
Plug 'lilydjwg/colorizer'
Plug 'plasticboy/vim-markdown'
Plug 'scrooloose/NERDTree'
Plug 'flazz/vim-colorschemes'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'potatoesmaster/i3-vim-syntax'
Plug 'girishji/vimsuggest'
Plug 'ntpeters/vim-better-whitespace'
Plug 'riscript/vim-fasm-syntax'
Plug 'code5717/c3.vim'
Plug 'itchyny/lightline.vim'
call plug#end()

let g:minimap_width = 2
let g:minimap_auto_start = 1
let g:minimap_auto_start_win_enter = 1
let g:NERDTreeWinPos = 'right'
let g:NERDTreeShowHidden = 1
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
let g:better_whitespace_enabled = 1

let s:vim_suggest = {}
let s:vim_suggest.cmd = {
    \ 'enable': v:true,
    \ 'pum': v:true,
    \ 'exclude': [],
    \ 'onspace': ['b\%[uffer]','colo\%[rscheme]'],
    \ 'alwayson': v:true,
    \ 'popupattrs': {},
    \ 'wildignore': v:true,
    \ 'addons': v:true,
    \ 'trigger': 't',
    \ 'reverse': v:false,
    \ 'prefixlen': 1,
\ }

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

let g:currentmode={
    \ 'n'  : 'N',
    \ 'v'  : 'V',
    \ 'c'  : 'CMD',
    \ 'V'  : 'VL',
    \ "\<C-v>" : 'VB',
    \ 'i'  : 'I',
    \ 'R'  : 'R'
    \}

let g:lightline={
    \ 'mode_map': {
    \ 'n'  : 'N',
    \ 'v'  : 'V',
    \ 'c'  : 'CMD',
    \ 'V'  : 'VL',
    \ "\<C-v>" : 'VB',
    \ 'i'  : 'I',
    \ 'R'  : 'R'
    \}
    \}
" Colour Settings
set background=dark
" colorscheme woju
colorscheme alterior

"""" Status Line """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline=
set statusline+=\ %{g:currentmode[mode()]}\:
set statusline+=%{&modified?'\*':'\-'}
set statusline+=%{&readonly?'\ \ [RO]':'\'}
set statusline+=\ \ 
set statusline+=%<
set statusline+=%f
set statusline+=%=
set statusline+=\ %{''!=#&filetype?&filetype:'none'}
set statusline+=%(\ %{(&bomb\|\|'^$\|utf-8'!~#&fileencoding?'\ '.&fileencoding.(&bomb?'-bom':''):'').('unix'!=#&fileformat?'\ '.&fileformat:'')}%)
set statusline+=%(\ \ %{&modifiable?(&expandtab?'et\ ':'noet\ ').&shiftwidth:''}%)
set statusline+=\ 
set statusline+=\ %2v 
set statusline+=\ %3p%%\ 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup AutoReloadVimrc
	autocmd!
	autocmd BufWritePost ~/.vimrc source %
	autocmd BufWritePost ~/.config/i3/config call system("xdotool key super+r")
augroup END

fun! ModifyVimrc()
	let l:filename = expand('%')
	let l:vimrc = '/home/86kbyte/.vimrc'

	if l:filename == l:vimrc || '.vimrc' || '~/.vimrc'
		echo "Not opening ~/.vimrc: Already opened"
		return
	elseif l:filename == ''
		execute 'edit ' . l:vimrc
		return
	else
		execute 'tabnew ' . l:vimrc
	endif
endfun

fun! CompilerCommand()
	let l:command = input("Compile command: ")
	redraw!

	if empty(command)
		return
	endif

	execute 'below term ++rows=8 ' . l:command
	set winfixheight

	tnoremap <buffer> <silent> <Esc> <C-\><C-n>:close<CR>
	nnoremap <buffer> <silent> <CR>  :close<CR>
endfun

"""" Keybindings """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
cnoreabbrev new tabnew
cnoreabbrev PI PlugInstall
cnoreabbrev pi PlugInstall

map <F1> :help 
map <F4> :call ModifyVimrc()<CR>
map <F2> :! 
map <F5> :PlugInstall<CR>
map <F6> :term ++rows=8<CR>
map <F9> :NERDTreeToggle<CR>
map <C-x>m :call CompilerCommand()<CR>
map <C-x>m <F2>
map <C-x>b :bd<CR>
map <C-x><C-e> :so %<CR>
map <C-x><C-f> :e <C-R>=getcwd()<CR>/
map <C-x><C-t><C-f> :new <C-R>=getcwd()<CR>/
map <C-x><C-s> :w<CR>
map <C-x><C-w> :tabclose<CR>
map <C-x>k ZZ
map <C-t> :tabNext<CR>

map <C-x>= 5<C-w>+
map <C-x>- 5<C-w>-
map <C-x>. 5<C-w>>
map <C-x>, 5<C-w><

map <C-x><Left> <C-w><Left>
map <C-x><Right> <C-w><Right>
map <C-x><Up> <C-w><Up>
map <C-x><Down> <C-w><Down>

map <C-x>v <C-w>v
map <C-x>s <C-w>s
