set suffixesadd+=.js
set suffixesadd+=.js
set suffixesadd+=.vue
set suffixesadd+=.lua
set suffixesadd+=.vim

let g:AutoPairsFlyMode = 1

"if !empty(glob('~/.config/nvim/tmp/session.vim'))
"    autocmd BufNew * source ~/.config/nvim/tmp/session.vim
"endif
"autocmd BufWinEnter * NvimTreeOpen 
function! s:leaveEvent()
  exec "NvimTreeClose"
  exec "mks! ~/.config/nvim/tmp/session.vim"
endfunction
autocmd VimLeavePre * :call s:leaveEvent()


function! s:enterEvent()
  exec "set fo-=r"
endfunction
autocmd BufNew * :call s:enterEvent()

nnoremap <F5> :UndotreeToggle<CR>
if has("persistent_undo")
   let target_path = expand('~/.undodir')
    " create the directory and any parent directories
    " if the location does not exist.
    if !isdirectory(target_path)
        call mkdir(target_path, "p", 0700)
    endif
    let &undodir=target_path
    set undofile
endif

" wildfire快捷键
" This selects the next closest text object.
" map <SPACE> <Plug>(wildfire-fuel)
" " This selects the previous closest text object.
" vmap <C-SPACE> <Plug>(wildfire-water)
" let g:wildfire_objects = {
"     \ "*" : ["i'", 'i"', "i)", "i]", "i}"],
" \ }
" cal wildfire#triggers#Add("<ENTER>", {
"     \ "html,xml" : ["at", "it"],
" \ })


" 退出vim也能保存文件修改历史
" silent !mkdir -p ~/.config/nvim/tmp/backup
" silent !mkdir -p ~/.config/nvim/tmp/undo
" set backupdir=~/.config/nvim/tmp/backup,
" set directory=~/.config/nvim/tmp/backup,
" if has('persistent_undo')
"   set undofile
"   set undodir=~/.config/nvim/tmp/undo,
" endif

" " Compile function
" map r :call CompileRunGcc()<CR>
" func! CompileRunGcc()
"   exec "w"
"   if &filetype == 'c'
"     exec "!g++ % -o %<"
"     exec "!time ./%<"
"   elseif &filetype == 'cpp'
"     exec "!g++ % -o %<"
"     exec "!time ./%<"
"   elseif &filetype == 'java'
"     exec "!javac %"
"     exec "!time java %<"
"   elseif &filetype == 'sh'
"     :!time bash %
"   elseif &filetype == 'python'
"     silent! exec "!clear"
"     exec "!time python3 %"
"   elseif &filetype == 'html'
"     exec "!firefox % &"
"   elseif &filetype == 'markdown'
"     exec "MarkdownPreview"
"   elseif &filetype == 'vimwiki'
"     exec "MarkdownPreview"
"   endif
" endfunc
"
""inoremap <leader><leader> /\(""\\|''\\|()\\|{}\\|$\)<cr>a

" 取消换行时的注释
" set fo-=r
