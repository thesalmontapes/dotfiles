" thesalmontapes.vim - Vim color scheme for 16-color terminals
" --------------------------------------------------------------
" Author:   thesalmontapes@gmail.com
" Version:  1.0.0
" --------------------------------------------------------------
" Original: https://github.com/noahfrederick/vim-noctu

" Scheme setup {{{
set background=dark
hi! clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "thesalmontapes"

"}}}
" Vim UI {{{
hi Normal              ctermfg=7
hi Cursor              ctermfg=7     ctermbg=1
hi CursorLine          ctermbg=0     cterm=NONE
hi MatchParen          ctermfg=7     ctermbg=NONE  cterm=underline
hi Pmenu               ctermfg=15    ctermbg=0
hi PmenuThumb          ctermbg=7
hi PmenuSBar           ctermbg=8
hi PmenuSel            ctermfg=0     ctermbg=4
hi ColorColumn         ctermbg=19
hi SpellBad            ctermfg=1     ctermbg=NONE  cterm=underline
hi SpellCap            ctermfg=10    ctermbg=NONE  cterm=underline
hi SpellRare           ctermfg=11    ctermbg=NONE  cterm=underline
hi SpellLocal          ctermfg=13    ctermbg=NONE  cterm=underline
hi NonText             ctermfg=19
hi LineNr              ctermfg=19    ctermbg=NONE
hi CursorLineNr        ctermfg=7     ctermbg=0
hi Visual              ctermfg=7     ctermbg=19
hi IncSearch           ctermfg=0     ctermbg=3     cterm=NONE
hi Search              ctermfg=0     ctermbg=3
hi StatusLine          ctermfg=20    ctermbg=0
hi StatusLineNC        ctermfg=18    ctermbg=8
hi VertSplit           ctermfg=4     ctermbg=0     cterm=NONE
hi TabLine             ctermfg=8     ctermbg=0     cterm=NONE
hi TabLineSel          ctermfg=7     ctermbg=0
hi Folded              ctermfg=6     ctermbg=0     cterm=bold
hi Conceal             ctermfg=6     ctermbg=NONE
hi Directory           ctermfg=12
hi Title               ctermfg=7
hi ErrorMsg            ctermfg=1     ctermbg=0
hi DiffAdd             ctermfg=0     ctermbg=2
hi DiffChange          ctermfg=0     ctermbg=3
hi DiffDelete          ctermfg=0     ctermbg=1
hi DiffText            ctermfg=0     ctermbg=11    cterm=bold
hi! link CursorColumn  CursorLine
hi! link SignColumn    LineNr
hi! link WildMenu      Visual
hi! link FoldColumn    SignColumn
hi! link WarningMsg    ErrorMsg
hi! link MoreMsg       Title
hi! link Question      MoreMsg
hi! link ModeMsg       MoreMsg
hi! link TabLineFill   StatusLineNC
hi! link SpecialKey    NonText

"}}}
" Generic syntax {{{
hi Delimiter       ctermfg=7
hi Comment         ctermfg=8   cterm=italic
hi Underlined      ctermfg=4   cterm=underline
hi Type            ctermfg=7
hi String          ctermfg=2
hi Keyword         ctermfg=5
hi Todo            ctermfg=15  ctermbg=NONE     cterm=bold,underline
hi Function        ctermfg=7
hi Identifier      ctermfg=7   cterm=NONE
hi Statement       ctermfg=5   cterm=NONE
hi Constant        ctermfg=6
hi Number          ctermfg=6
hi Boolean         ctermfg=6
hi Special         ctermfg=6
hi Ignore          ctermfg=0
hi PreProc         ctermfg=7   cterm=NONE
hi! link Operator  Delimiter
hi! link Error     ErrorMsg
hi! link NvimInternalError ErrorMsg

"}}}
" Git {{{
hi gitCommitBranch               ctermfg=3
hi gitCommitSelectedType         ctermfg=10
hi gitCommitSelectedFile         ctermfg=2
hi gitCommitUnmergedType         ctermfg=9
hi gitCommitUnmergedFile         ctermfg=1
hi! link gitCommitFile           Directory
hi! link gitCommitUntrackedFile  gitCommitUnmergedFile
hi! link gitCommitDiscardedType  gitCommitUnmergedType
hi! link gitCommitDiscardedFile  gitCommitUnmergedFile

"}}}
" Help {{{
hi! link helpExample         String
hi! link helpHeadline        Title
hi! link helpSectionDelim    Comment
hi! link helpHyperTextEntry  Statement
hi! link helpHyperTextJump   Underlined
hi! link helpURL             Underlined

"}}}
" Netrw {{{
hi netrwExe       ctermfg=9
hi netrwClassify  ctermfg=8  cterm=bold

"}}}
" Diff {{{
hi diffAdded  ctermfg=2
hi diffRemoved  ctermfg=1
hi! link diffFile  PreProc
hi! link diffLine  Title

"}}}
" FZF {{{
let g:fzf_colors =
\ { 'fg':         ['fg', 'Comment'],
  \ 'bg':         ['bg', 'Normal'],
  \ 'hl':         ['fg', 'Directory'],
  \ 'fg+':        ['fg', 'Normal'],
  \ 'bg+':        ['bg', 'CursorLineNr'],
  \ 'preview-fg': ['fg', 'Normal'],
  \ 'preview-bg': ['bg', 'Normal'],
  \ 'hl+':        ['fg', 'Directory'],
  \ 'info':       ['bg', 'Search'],
  \ 'prompt':     ['fg', 'Directory'],
  \ 'pointer':    ['fg', 'CursorLineNr'],
  \ 'marker':     ['fg', 'CursorLineNr'],
  \ 'spinner':    ['fg', 'Directory'],
  \ 'header':     ['fg', 'Comment'] }

"}}}

" vim: fdm=marker:sw=2:sts=2:et
