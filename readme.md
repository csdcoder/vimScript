请保持当前路径与下面路径内容一致
\c\tools\neovim\nvim-win64\bin\lua

代码补全出现问题解决：
路径可能不是下面的路径，根据报错提示走，windows可能是C:\tools\neovim\nvim-win64\share\nvim\runtime\lua\vim\lsp
open this file /usr/local/share/nvim/runtime/lua/vim/lsp/util.lua or the equivalent on your system
and change the start of function M.apply_text_edits at line 365
function M.apply_text_edits(text_edits, bufnr, offset_encoding)
  offset_encoding = offset_encoding or "utf-16"  -- add this line
  validate {
    text_edits = { text_edits, 't', false };
    bufnr = { bufnr, 'number', false };
    offset_encoding = { offset_encoding, 'string', false };
  }
出处：https://github.com/LunarVim/LunarVim/issues/2209

markdown插件安装不上就手动安装到这个目录下(特指windows系统)：
建议下载压缩包手动安装
```
C:\Users\Andy\AppData\Local\nvim-data\site\pack\packer\start
```
