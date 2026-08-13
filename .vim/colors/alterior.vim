"
" The name is literally so it was distinct from the other themes I have
" installed.

hi clear

if exists("syntax_on")
	syntax reset
endif

let g:colors_name = "alterior"
set background=dark

hi PreProc      cterm=bold ctermfg=75
hi Statement    cterm=bold ctermfg=220
hi Constant     cterm=NONE ctermfg=140
hi Type         cterm=bold ctermfg=112
hi Function     cterm=NONE ctermfg=117
hi Identifier   cterm=bold ctermfg=117

hi Special      cterm=bold ctermfg=203
hi Delimiter    cterm=NONE ctermfg=203

hi Todo         cterm=bold ctermfg=203 ctermbg=NONE

hi WildMenu     cterm=NONE ctermfg=16 ctermbg=220

hi DiffAdd      cterm=NONE ctermfg=NONE ctermbg=22
hi DiffDelete   cterm=NONE ctermfg=52 ctermbg=52
hi DiffChange   cterm=NONE ctermfg=NONE ctermbg=235
hi DiffText     cterm=NONE ctermfg=NONE ctermbg=235

hi Folded       cterm=NONE ctermfg=111 ctermbg=NONE
hi FoldColumn   cterm=NONE ctermfg=111 ctermbg=NONE

hi Pmenu ctermbg=black ctermfg=gray
hi PmenuMatch ctermfg=yellow cterm=bold
hi Pmenusel ctermbg=yellow ctermfg=black cterm=bold

hi ModeMsg ctermfg=yellow ctermbg=black cterm=bold
hi MsgArea ctermfg=yellow

hi TabLine ctermbg=black ctermfg=12 cterm=italic
hi TabPanelSel ctermbg=yellow ctermfg=0
hi TabLineSel ctermfg=yellow
hi TabPanelFill ctermbg=0 cterm=NONE
hi TabLineFill ctermbg=0 cterm=NONE

hi StatusLine ctermbg=black ctermfg=yellow cterm=bold
hi StatusLineNC ctermbg=black ctermfg=102 cterm=italic
hi StatusLineTerm ctermbg=black ctermfg=35
hi StatusLineTermNC ctermbg=black ctermfg=35 cterm=italic

hi VertSplit ctermbg=black ctermfg=white

hi CursorLine ctermbg=none cterm=NONE guibg=NONE
hi CursorLineNr ctermfg=yellow ctermbg=NONE cterm=bold
hi LineNr ctermbg=NONE ctermfg=8
hi Comment ctermbg=NONE ctermfg=8

hi Visual ctermbg=25 ctermfg=black

hi VertSplit ctermbg=black ctermfg=black
hi VertSplitNC ctermbg=black ctermfg=black

hi String cterm=bold,italic ctermfg=magenta

hi ExtraWhitespace ctermbg=8
