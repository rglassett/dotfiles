" 'rglassett-dark.vim' -- Vim color scheme.
" Author:       Ryan Glassett (rglassett@gmail.com)
" Description:  Streamlining of 'solarized' by Ethan Schoonover
"               (es@ethanschoonover.com)

" SOLARIZED HEX     16/8 TERMCOL  XTERM/HEX   L*A*B      RGB         HSB
" --------- ------- ---- -------  ----------- ---------- ----------- -----------
" base03    #002b36  8/4 brblack  234 #1c1c1c 15 -12 -12   0  43  54 193 100  21
" base02    #073642  0/4 black    235 #262626 20 -12 -12   7  54  66 192  90  26
" base01    #586e75 10/7 brgreen  240 #585858 45 -07 -07  88 110 117 194  25  46
" base00    #657b83 11/7 bryellow 241 #626262 50 -07 -07 101 123 131 195  23  51
" base0     #839496 12/6 brblue   244 #808080 60 -06 -03 131 148 150 186  13  59
" base1     #93a1a1 14/4 brcyan   245 #8a8a8a 65 -05 -02 147 161 161 180   9  63
" base2     #eee8d5  7/7 white    254 #e4e4e4 92 -00  10 238 232 213  44  11  93
" base3     #fdf6e3 15/7 brwhite  230 #ffffd7 97  00  10 253 246 227  44  10  99
" yellow    #b58900  3/3 yellow   136 #af8700 60  10  65 181 137   0  45 100  71
" orange    #cb4b16  9/3 brred    166 #d75f00 50  50  55 203  75  22  18  89  80
" red       #dc322f  1/1 red      160 #d70000 50  65  45 220  50  47   1  79  86
" magenta   #d33682  5/5 magenta  125 #af005f 50  65 -05 211  54 130 331  74  83
" violet    #6c71c4 13/5 brmagenta 61 #5f5faf 50  15 -45 108 113 196 237  45  77
" blue      #268bd2  4/4 blue      33 #0087ff 55 -10 -45  38 139 210 205  82  82
" cyan      #2aa198  6/6 cyan      37 #00afaf 60 -35 -05  42 161 152 175  74  63
" green     #859900  2/2 green     64 #5f8700 60 -20  65 133 153   0  68 100  60

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "rglassett-dark-minimal"

hi ColorColumn  guibg=#073642 ctermbg=0
hi Comment      guifg=#586e75 ctermfg=10    gui=italic
hi Conceal      guibg=NONE    ctermbg=NONE  guifg=#268bd2   ctermfg=4
hi Constant     guifg=#2aa198 ctermfg=6
hi Cursor       guibg=#839496 ctermbg=12    guifg=#002b36   ctermfg=8
hi CursorColumn guibg=#073642 ctermbg=0
hi CursorLine   guibg=#073642 ctermbg=0     cterm=NONE      guisp=#93a1a1
hi DiffAdd      guibg=#073642 ctermbg=0     guifg=#859900   ctermfg=2    guisp=#859900
hi DiffChange   guibg=#073642 ctermbg=0     guifg=#b58900   ctermfg=3    guisp=#b58900
hi DiffDelete   guibg=#073642 ctermbg=0     guifg=#dc322f   ctermfg=1
hi DiffText     guibg=#073642 ctermbg=0     guifg=#268bd2   ctermfg=4    guisp=#268bd2
hi Directory    guifg=#268bd2 ctermfg=4
hi Error        guibg=NONE    ctermbg=NONE  guifg=#dc322f   ctermfg=1    gui=bold              cterm=bold
hi ErrorMsg     guibg=NONE    ctermbg=NONE  guifg=#dc322f   ctermfg=1    gui=reverse           cterm=reverse
hi FoldColumn   guibg=#073642 ctermbg=0     guifg=#839496   ctermfg=12
hi Folded       guibg=#073642 ctermbg=0     guifg=#839496   ctermfg=12   gui=bold,underline    cterm=bold,underline    guisp=#002b36
hi Identifier   guifg=#268bd2 ctermfg=4     gui=NONE        cterm=NONE
hi Ignore       guifg=NONE    ctermfg=NONE
hi IncSearch    guifg=#cb4b16 ctermfg=9
hi LineNr       guibg=#073642 ctermbg=0     guifg=#586e75   ctermfg=10
hi MatchParen   guibg=#586e75 ctermbg=10    guifg=#dc322f   ctermfg=1    gui=bold              cterm=bold
hi ModeMsg      guifg=#268bd2 ctermfg=4     gui=NONE        cterm=NONE
hi MoreMsg      guifg=#268bd2 ctermfg=4     gui=NONE        cterm=NONE
hi NonText      guifg=#657b83 ctermfg=11    cterm=bold
hi Normal       guibg=#002b36 ctermbg=8     guifg=#839496   ctermfg=12
hi Pmenu        guibg=#073642 ctermbg=0     guifg=#839496   ctermfg=12   gui=reverse           cterm=reverse
hi PmenuSbar    guibg=#839496 ctermbg=12    guifg=#eee8d5   ctermfg=7    gui=reverse           cterm=reverse
hi PmenuSel     guibg=#eee8d5 ctermbg=7     guifg=#586e75   ctermfg=10   gui=reverse           cterm=reverse
hi PmenuThumb   guibg=#002b36 ctermbg=8     guifg=#839496   ctermfg=12   gui=reverse           cterm=reverse
hi PreProc      guifg=#cb4b16 ctermfg=9
hi Question     guifg=#2aa198 ctermfg=6     cterm=bold
hi Search       guibg=NONE    ctermbg=NONE  guifg=#b58900   ctermfg=3    gui=reverse           cterm=reverse
hi SignColumn   guifg=#839496 ctermfg=12
hi Special      guifg=#dc322f ctermfg=1
hi SpecialKey   guibg=#073642 ctermbg=0     guifg=#657b83   ctermfg=11   gui=bold              cterm=bold
hi SpellBad     ctermbg=NONE  gui=undercurl cterm=undercurl guisp=#dc322f
hi SpellCap     ctermbg=NONE  gui=undercurl cterm=undercurl guisp=#6c71c4
hi SpellLocal   ctermbg=NONE  gui=undercurl cterm=undercurl guisp=#b58900
hi SpellRare    ctermfg=NONE  gui=undercurl cterm=undercurl guisp=#2aa198
hi Statement    guifg=#859900 ctermfg=2     gui=NONE        cterm=NONE
hi StatusLine   guibg=#073642 ctermbg=0     guifg=#93a1a1   ctermfg=14   gui=reverse           cterm=reverse
hi StatusLineNC guibg=#073642 ctermbg=0     guifg=#657b83   ctermfg=11   gui=reverse           cterm=reverse
hi TabLine      guibg=#073642 ctermbg=0     guifg=#839496   ctermfg=12   gui=underline         cterm=underline         guisp=#839496
hi TabLineFill  guibg=#073642 ctermbg=0     guifg=#839496   ctermfg=12   gui=underline         cterm=underline         guisp=#839496
hi TabLineSel   guibg=#eee8d5 ctermbg=7     guifg=#586e75   ctermfg=10   gui=reverse,underline cterm=reverse,underline guisp=#839496
hi Title        guifg=#cb4b16 ctermfg=9     cterm=bold
hi Todo         guibg=NONE    ctermbg=NONE  guifg=#d33682   ctermfg=5    gui=bold              cterm=bold
hi Type         guifg=#b58900 ctermfg=3     gui=NONE
hi Underlined   guifg=#6c71c4 ctermfg=13    gui=NONE        cterm=NONE
hi VertSplit    guibg=#657b83 ctermbg=11    guifg=#657b83   ctermfg=11   gui=NONE              cterm=NONE
hi Visual       guibg=#002b36 ctermbg=8     guifg=#586e75   ctermfg=10   gui=reverse           cterm=reverse
hi VisualNOS    guibg=#073642 ctermbg=0     guifg=NONE      ctermfg=NONE gui=reverse           cterm=reverse
hi WarningMsg   guifg=#dc322f ctermfg=1     gui=bold        cterm=bold
hi WildMenu     guibg=#073642 ctermbg=0     guifg=#eee8d5   ctermfg=7    gui=reverse           cterm=reverse

hi helpExample        guifg=#93a1a1 ctermfg=14
hi helpHyperTextEntry guifg=#859900 ctermfg=2
hi helpHyperTextJump  guifg=#268bd2 ctermfg=4 gui=underline      cterm=underline
hi helpNote           guifg=#d33682 ctermfg=5
hi helpOption         guifg=#2aa198 ctermfg=6
hi helpVim            guifg=#d33682 ctermfg=5
hi vimCmdSep          guifg=#268bd2 ctermfg=4 gui=bold           cterm=bold
hi vimCommand         guifg=#b58900 ctermfg=3
hi vimCommentString   guifg=#6c71c4 ctermfg=13
hi vimGroup           guifg=#268bd2 ctermfg=4 gui=bold,underline cterm=bold,underline
hi vimHiGroup         guifg=#268bd2 ctermfg=4
hi vimHiLink          guifg=#268bd2 ctermfg=4
hi vimIsCommand       guifg=#657b83 ctermfg=11
hi vimSynMtchOpt      guifg=#b58900 ctermfg=3
hi vimSynType         guifg=#2aa198 ctermfg=6

hi gitcommitBranch        guifg=#d33682 ctermfg=5  gui=bold cterm=bold
hi gitcommitComment       guifg=#586e75 ctermfg=10 gui=italic
hi gitcommitDiscardedFile guifg=#dc322f ctermfg=1  gui=bold cterm=bold
hi gitcommitDiscardedType guifg=#dc322f ctermfg=1
hi gitcommitFile          guifg=#839496 ctermfg=12 gui=bold cterm=bold
hi gitcommitHeader        guifg=#586e75 ctermfg=10
hi gitcommitOnBranch      guifg=#586e75 ctermfg=10 gui=bold cterm=bold
hi gitcommitSelectedFile  guifg=#859900 ctermfg=2  gui=bold cterm=bold
hi gitcommitSelectedType  guifg=#859900 ctermfg=2
hi gitcommitUnmerged      guifg=#859900 ctermfg=2  gui=bold cterm=bold
hi gitcommitUnmergedFile  guifg=#b58900 ctermfg=3  gui=bold cterm=bold
hi gitcommitUntrackedFile guifg=#2aa198 ctermfg=6  gui=bold cterm=bold

hi htmlArg            guifg=#657b83 ctermfg=11
hi htmlEndTag         guifg=#586e75 ctermfg=10
hi htmlSpecialTagName guifg=#268bd2 ctermfg=4  gui=italic
hi htmlTag            guifg=#586e75 ctermfg=10
hi htmlTagN           guifg=#93a1a1 ctermfg=14 gui=bold cterm=bold
hi htmlTagName        guifg=#268bd2 ctermfg=4  gui=bold cterm=bold
hi javaScript         guifg=#b58900 ctermfg=3

hi perlHereDoc           guibg=#002b36 ctermbg=8 guifg=#93a1a1 ctermfg=14
hi perlStatementFileDesc guibg=#002b36 ctermbg=8 guifg=#2aa198 ctermfg=6
hi perlVarPlain          guibg=#002b36 ctermbg=8 guifg=#b58900 ctermfg=3

hi rubyDefine guifg=#93a1a1 ctermfg=14 guibg=#002b36 ctermbg=8 gui=bold cterm=bold

hi texMathMatcher guibg=#002b36 ctermbg=8 guifg=#b58900 ctermfg=3
hi texMathZoneX   guibg=#002b36 ctermbg=8 guifg=#b58900 ctermfg=3
hi texRefLabel    guibg=#002b36 ctermbg=8 guifg=#b58900 ctermfg=3
hi texStatement   guibg=#002b36 ctermbg=8 guifg=#2aa198 ctermfg=6

hi ConId              guifg=#b58900 ctermfg=3
hi VarId              guifg=#268bd2 ctermfg=4
hi cPreCondit         guifg=#cb4b16 ctermfg=9
hi hsImport           guifg=#d33682 ctermfg=5
hi hsImportLabel      guifg=#2aa198 ctermfg=6
hi hsModuleName       guifg=#859900 ctermfg=2 gui=underline cterm=underline
hi hsModuleStartLabel guifg=#d33682 ctermfg=5
hi hsStatement        guifg=#2aa198 ctermfg=6
hi hsString           guifg=#657b83 ctermfg=11
hi hsStructure        guifg=#2aa198 ctermfg=6
hi hsType             guifg=#b58900 ctermfg=3
hi hsTypedef          guifg=#2aa198 ctermfg=6
hi hsVarSym           guifg=#2aa198 ctermfg=6
hi hs_DeclareFunction guifg=#cb4b16 ctermfg=9
hi hs_OpFunctionName  guifg=#b58900 ctermfg=3
hi hs_hlFunctionName  guifg=#268bd2 ctermfg=4

hi pandocBlockQuote        guifg=#268bd2 ctermfg=4
hi pandocBlockQuoteLeader1 guifg=#268bd2 ctermfg=4
hi pandocBlockQuoteLeader2 guifg=#2aa198 ctermfg=6
hi pandocBlockQuoteLeader3 guifg=#b58900 ctermfg=3
hi pandocBlockQuoteLeader4 guifg=#dc322f ctermfg=1
hi pandocBlockQuoteLeader5 guifg=#839496 ctermfg=12
hi pandocBlockQuoteLeader6 guifg=#586e75 ctermfg=10
hi pandocComment           guifg=#586e75 ctermfg=10 gui=italic
hi pandocListMarker        guifg=#d33682 ctermfg=5
hi pandocListReference     guifg=#d33682 ctermfg=5  gui=underline cterm=underline
hi pandocTitleBlock        guifg=#268bd2 ctermfg=4
hi pandocTitleBlockTitle   guifg=#268bd2 ctermfg=4  gui=bold      cterm=bold
hi pandocTitleComment      guifg=#268bd2 ctermfg=4  gui=bold      cterm=bold
hi pandocVerbatimBlock     guifg=#b58900 ctermfg=3

hi pandocDefinitionBlock                  guifg=#6c71c4 ctermfg=13
hi pandocDefinitionIndctr                 guifg=#6c71c4 ctermfg=13 gui=bold     cterm=bold
hi pandocDefinitionTerm                   guifg=#6c71c4 ctermfg=13 gui=standout cterm=standout
hi pandocEmphasisDefinition               guifg=#6c71c4 ctermfg=13 gui=italic   cterm=NONE
hi pandocEmphasisNestedDefinition         guifg=#6c71c4 ctermfg=13 gui=bold     cterm=bold
hi pandocStrikeoutDefinition              guifg=#6c71c4 ctermfg=13 gui=reverse  cterm=reverse
hi pandocStrongEmphasisDefinition         guifg=#6c71c4 ctermfg=13 gui=bold     cterm=bold
hi pandocStrongEmphasisEmphasisDefinition guifg=#6c71c4 ctermfg=13 gui=bold     cterm=bold
hi pandocStrongEmphasisNestedDefinition   guifg=#6c71c4 ctermfg=13 gui=bold     cterm=bold
hi pandocSubscriptDefinition              guifg=#6c71c4 ctermfg=13
hi pandocSuperscriptDefinition            guifg=#6c71c4 ctermfg=13
hi pandocVerbatimInlineDefinition         guifg=#6c71c4 ctermfg=13

hi pandocEmphasisNestedTable         guifg=#268bd2 ctermfg=4 gui=bold      cterm=bold
hi pandocEmphasisTable               guifg=#268bd2 ctermfg=4 gui=italic    cterm=NONE
hi pandocStrikeoutTable              guifg=#268bd2 ctermfg=4 gui=reverse   cterm=reverse
hi pandocStrongEmphasisEmphasisTable guifg=#268bd2 ctermfg=4 gui=bold      cterm=bold
hi pandocStrongEmphasisNestedTable   guifg=#268bd2 ctermfg=4 gui=bold      cterm=bold
hi pandocStrongEmphasisTable         guifg=#268bd2 ctermfg=4 gui=bold      cterm=bold
hi pandocSubscriptTable              guifg=#268bd2 ctermfg=4
hi pandocSuperscriptTable            guifg=#268bd2 ctermfg=4
hi pandocTable                       guifg=#268bd2 ctermfg=4
hi pandocTableStructure              guifg=#268bd2 ctermfg=4
hi pandocTableZebraDark              guibg=#073642 ctermbg=0 guifg=#268bd2 ctermfg=4
hi pandocTableZebraLight             guibg=#002b36 ctermbg=8 guifg=#268bd2 ctermfg=4
hi pandocVerbatimInlineTable         guifg=#268bd2 ctermfg=4

hi pandocEmphasisHeading               guifg=#cb4b16 ctermfg=9 gui=bold    cterm=bold
hi pandocEmphasisNestedHeading         guifg=#cb4b16 ctermfg=9 gui=bold    cterm=bold
hi pandocHeading                       guifg=#cb4b16 ctermfg=9 gui=bold    cterm=bold
hi pandocHeadingMarker                 guifg=#b58900 ctermfg=3 gui=bold    cterm=bold
hi pandocStrikeoutHeading              guifg=#cb4b16 ctermfg=9 gui=reverse cterm=reverse
hi pandocStrongEmphasisEmphasisHeading guifg=#cb4b16 ctermfg=9 gui=bold    cterm=bold
hi pandocStrongEmphasisHeading         guifg=#cb4b16 ctermfg=9 gui=bold    cterm=bold
hi pandocStrongEmphasisNestedHeading   guifg=#cb4b16 ctermfg=9 gui=bold    cterm=bold
hi pandocSubscriptHeading              guifg=#cb4b16 ctermfg=9 gui=bold    cterm=bold
hi pandocSuperscriptHeading            guifg=#cb4b16 ctermfg=9 gui=bold    cterm=bold
hi pandocVerbatimInlineHeading         guifg=#cb4b16 ctermfg=9 gui=bold    cterm=bold

hi pandocCitation         guifg=#d33682 ctermfg=5  
hi pandocCitationDelim    guifg=#d33682 ctermfg=5  
hi pandocCitationID       guifg=#d33682 ctermfg=5  gui=underline      cterm=underline
hi pandocCitationRef      guifg=#d33682 ctermfg=5
hi pandocFootnote         guifg=#859900 ctermfg=2
hi pandocFootnoteDefLink  guifg=#859900 ctermfg=2  gui=bold           cterm=bold
hi pandocFootnoteInline   guifg=#859900 ctermfg=2  gui=bold,underline cterm=bold,underline
hi pandocFootnoteLink     guifg=#859900 ctermfg=2  gui=underline      cterm=underline
hi pandocImageCaption     guifg=#6c71c4 ctermfg=13 gui=bold,underline cterm=bold,underline
hi pandocLinkDefinition   guifg=#2aa198 ctermfg=6  gui=underline      cterm=underline guisp=#657b83
hi pandocLinkDefinitionID guifg=#268bd2 ctermfg=4  gui=bold           cterm=bold
hi pandocLinkDelim        guifg=#586e75 ctermfg=10
hi pandocLinkLabel        guifg=#268bd2 ctermfg=4  gui=underline      cterm=underline
hi pandocLinkText         guifg=#268bd2 ctermfg=4  gui=bold,underline cterm=bold,underline
hi pandocLinkTitle        guifg=#657b83 ctermfg=11 gui=underline      cterm=underline
hi pandocLinkTitleDelim   guifg=#586e75 ctermfg=10 gui=underline      cterm=underline guisp=#657b83
hi pandocLinkURL          guifg=#657b83 ctermfg=11 gui=underline      cterm=underline

hi pandocEmphasis               guifg=#839496 ctermfg=12 gui=italic
hi pandocEmphasisNested         guifg=#839496 ctermfg=12 gui=bold    cterm=bold
hi pandocStrikeout              guifg=#586e75 ctermfg=10 gui=reverse cterm=reverse
hi pandocStrongEmphasis         guifg=#839496 ctermfg=12 gui=bold    cterm=bold
hi pandocStrongEmphasisEmphasis guifg=#839496 ctermfg=12 gui=bold    cterm=bold
hi pandocStrongEmphasisNested   guifg=#839496 ctermfg=12 gui=bold    cterm=bold
hi pandocStyleDelim             guifg=#586e75 ctermfg=10
hi pandocSubscript              guifg=#6c71c4 ctermfg=13
hi pandocSuperscript            guifg=#6c71c4 ctermfg=13
hi pandocVerbatimInline         guifg=#b58900 ctermfg=3

hi pandocCitationRef      guifg=#d33682 ctermfg=5
hi pandocEscapePair       guifg=#dc322f ctermfg=1 gui=bold    cterm=bold
hi pandocNonBreakingSpace guifg=#dc322f ctermfg=1 gui=reverse cterm=reverse
hi pandocRule             guifg=#268bd2 ctermfg=4 gui=bold    cterm=bold
hi pandocRuleLine         guifg=#268bd2 ctermfg=4 gui=bold    cterm=bold

hi pandocMetadata      guifg=#268bd2 ctermfg=4
hi pandocMetadata      guifg=#268bd2 ctermfg=4  gui=bold cterm=bold
hi pandocMetadataDelim guifg=#586e75 ctermfg=10
hi pandocMetadataKey   guifg=#268bd2 ctermfg=4

hi link diffAdded Statement
hi link diffLine  Identifier

hi link gitcommitDiscarded      gitcommitComment
hi link gitcommitDiscardedArrow gitcommitDiscardedFile
hi link gitcommitNoBranch       gitcommitBranch
hi link gitcommitSelected       gitcommitComment
hi link gitcommitSelectedArrow  gitcommitSelectedFile
hi link gitcommitUnmergedArrow  gitcommitUnmergedFile
hi link gitcommitUntracked      gitcommitComment

hi link hsDelimTypeExport  Delimiter
hi link hsImportParams     Delimiter
hi link hsModuleStartLabel hsStructure
hi link hsModuleWhereLabel hsModuleStartLabel

hi link lCursor Cursor

hi link pandocCodeBlock         pandocVerbatimBlock
hi link pandocCodeBlockDelim    pandocVerbatimBlock
hi link pandocEscapedCharacter  pandocEscapePair
hi link pandocLineBreak         pandocEscapePair
hi link pandocMetadataTitle     pandocMetadata
hi link pandocTableStructureEnd pandocTableStructre
hi link pandocTableStructureTop pandocTableStructre
hi link pandocVerbatimBlockDeep pandocVerbatimBlock

hi link helpSpecial Special
hi link vimFunc     Function
hi link vimSet      Normal
hi link vimSetEqual Normal
hi link vimUserFunc Function
hi link vimVar      Identifier
