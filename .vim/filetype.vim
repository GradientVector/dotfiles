" local filetype file
" loads various extra filetypes

if exists("did_load_filetypes")
    finish
endif
augroup filetypedetect
    au! BufNewFile,BufRead *.ino,*.pde setf arduino
    au! BufNewFile,BufRead *.cmake,CMakeLists.txt,*.cmake.in,*.ctest,*.ctest.in setf cmake
    au! BufNewFile,BufRead *.rb setf ruby
    au! BufNewFile,BufRead *.yaml,*.yml setf yaml
augroup END 
