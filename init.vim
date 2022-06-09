lua << EOF
-- 基础配置
require("basic")
-- Packer插件管理
require("plugins")
-- 快捷键映射
require("keybindings")
-- 主题设置 （新增）
require("colorscheme")
-- 自动命令
--require("autocmds")
-- 插件配置
require("plugin-config.nvim-tree")
require("plugin-config.bufferline")
require("plugin-config.lualine")
require("plugin-config.nvim-treesitter")
require("plugin-config.comment")
--require("plugin-config.wildfire")
--require("plugin-config.dashboard")
-- 内置LSP (新增)
--require("lsp.setup")
require("lsp.cmp") --  (新增)
--require("lsp.ui")
require("plugin-config.indent-blankline")
require("lsp.null-ls")
local myAutoGroup = vim.api.nvim_create_augroup("myAutoGroup", { clear = true, })
local autocmd = vim.api.nvim_create_autocmd
EOF

"" vim配置
let s:script_path = expand('<sfile>:p:h')
let s:sourceList = [
      \ 'init',
      \ 'vimplug',
      \ 'markdown-preview',
      \]
for s:item in s:sourceList
  exec 'source ' . s:script_path . '/viml/' . s:item . '.vim'
endfor
" 打开vue文件时加载"
func! s:autopairs()
  if &filetype == "javascript"
    exec 'source ' . s:script_path . '/viml/js.vim'
  elseif &filetype == "vue"
    exec 'source ' . s:script_path . '/viml/vue.vim'
  endif
endfunc
autocmd BufEnter * :call s:autopairs()


