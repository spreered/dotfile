" enable Emmet only in HTML and CSS files
let g:user_emmet_install_global = 0
let g:user_emmet_leader_key='<c-e>'
autocmd FileType html,css,scss EmmetInstall

" map <Tab> to trigger Emmet
autocmd Filetype html,css,scss imap <silent> <buffer> <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

