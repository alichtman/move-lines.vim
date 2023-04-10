" Title:        move-lines.vim
" Description:  A plugin to provide remappings for easily moving lines around
" Last Change:  09 Apr 2023
" Maintainer:   Aaron Lichtman <https://github.com/alichtman>

" Prevents the plugin from being loaded multiple times. If the loaded
" variable exists, do nothing more. Otherwise, assign the loaded
" variable and continue running this instance of the plugin.
if exists("g:move_lines_plugin")
    finish
endif
let g:move_lines_plugin = 1

" Move lines above or below with ALT + [j/k].
" https://vimtricks.substack.com/p/vimtrick-moving-lines
nnoremap <A-j> :m .+1<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
nnoremap <A-k> :m .-2<CR>==
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-k> :m '<-2<CR>gv=gv

" vim: et ts=4 sw=4 sts=4
