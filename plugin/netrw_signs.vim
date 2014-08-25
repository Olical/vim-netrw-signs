command! NetrwSigns :call netrw_signs#SignBuffer()
command! NetrwSignsList :echo netrw_signs#GetBufferSigns()
command! NetrwSignsVersion :echo netrw_signs#GetVersion()