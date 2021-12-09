" run test in current line
noremap <silent> <Leader>t :call RunNearestSpec()<Enter>

" run test for current file
noremap <silent> <Leader>a :call RunCurrentSpecFile()<Enter>

let g:rspec_command = "!clear && echo bin/rspec {spec} && bin/rspec {spec}"
