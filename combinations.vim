" option-command-b
au FileType go nmap <leader>impl <Plug>(go-implements)

" fn+f2 
au FileType go nmap <leader>ren <Plug>(go-rename)

" показывает все вызовы объекта
au FileType go nmap <leader>call <Plug>(go-callers)

" показывает все ссылки на объект
au FileType go nmap <leader>ref <Plug>(go-referrers)

" generate if err != nil ... 
au FileType go nmap <leader>ie <Plug>(go-iferr)

" DEBUGGER
" go debug start 
au FileType go nmap <leader>bbg <Plug>(go-debug-start)
