" autocmd! gitgutter CursorHold,CursorHoldI
autocmd BufWritePost * GitGutter
let g:gitgutter_preview_win_floating = 1

nmap <Leader>hs <Plug>(GitGutterStageHunk)
nmap <Leader>hu <Plug>(GitGutterUndoHunk)
nmap <Leader>hp <Plug>(GitGutterPreviewHunk)
