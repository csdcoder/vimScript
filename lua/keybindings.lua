vim.g.mapleader = "\\"
vim.g.maplocalleader = "\\"

local map = vim.api.nvim_set_keymap
-- 复用 opt 参数
local opt = {noremap = true, silent = true }
-- 取消 s 默认功能
map("n", "s", "", opt)
--map("n", "S", "", opt)
map("n", "<C-z>", "", opt)
-- windows 分屏快捷键
map("n", "sv", ":vsp<CR>", opt)
map("n", "sh", ":sp<CR>", opt)
-- 关闭当前
map("n", "sc", "<C-w>c", opt)
-- 关闭其他
map("n", "so", "<C-w>o", opt)
-- Alt + hjkl  窗口之间跳转
map("n", "<A-h>", "<C-w>h", opt)
map("n", "<space>h", "<C-w>h", opt)
map("n", "<A-j>", "<C-w>j", opt)
map("n", "<space>j", "<C-w>j", opt)
map("n", "<A-k>", "<C-w>k", opt)
map("n", "<space>k", "<C-w>k", opt)
map("n", "<A-l>", "<C-w>l", opt)
map("n", "<space>l", "<C-w>l", opt)
-- 左右比例控制
map("n", "<C-Left>", ":vertical resize -2<CR>", opt)
map("n", "<C-Right>", ":vertical resize +2<CR>", opt)
map("n", "s,", ":vertical resize -20<CR>", opt)
map("n", "s.", ":vertical resize +20<CR>", opt)
-- 上下比例
map("n", "sj", ":resize +2<CR>", opt)
map("n", "sk", ":resize -2<CR>", opt)
-- map("n", "<C-Down>", ":resize +2<CR>", opt)
-- map("n", "<C-Up>", ":resize -2<CR>", opt)
-- 等比例
map("n", "s=", "<C-w>=", opt)
-- Terminal相关
map("n", "<leader>t", ":sp | terminal<CR>", opt)
map("n", "<leader>vt", ":vsp | terminal<CR>", opt)
map("t", "<ESC>", "<C-\\><C-n>", opt)
map("t", "<A-h>", [[ <C-\><C-N><C-w>h ]], opt)
map("t", "<A-j>", [[ <C-\><C-N><C-w>j ]], opt)
map("t", "<A-k>", [[ <C-\><C-N><C-w>k ]], opt)
map("t", "<A-l>", [[ <C-\><C-N><C-w>l ]], opt)
-- visual模式下缩进代码
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)
-- 上下移动选中文本
map("v", "J", ":move '>+1<CR>gv-gv", opt)
map("v", "K", ":move '<-2<CR>gv-gv", opt)
-- 上下滚动浏览
map("n", "<C-j>", "4j", opt)
map("n", "<C-k>", "4k", opt)
-- ctrl u / ctrl + d  只移动9行，默认移动半屏
map("n", "<C-u>", "9k", opt)
map("n", "<C-d>", "9j", opt)

-- 纯自定义配置
map("n", "e", "<end>", opt)
map("i", "<C-e>", "<end>", opt)
map("i", "<c-a>", "<home>", opt)
map("i", "<c-h>", "<left>", opt)
map("i", "<c-l>", "<right>", opt)
map("i", "<c-j>", "<down>", opt)
map("i", "<c-k>", "<up>", opt)
map("i", "{", "{}<left>", opt)
-- map("i", "}", "{}<left><cr><up><end><cr>", opt)
map("i", "(", "()<left>", opt)
map("i", ")", "<esc>la", opt)
map("i", "[", "[]<left>", opt)
map("i", "'", "''<left>", opt)
map("i", '"', '""<left>', opt)
map("i", "<leader><cr>", "<esc>A<cr>", opt)
map("i", "<c-d>", "<esc>0d$i", opt)
map("i", "<c-z>", "<esc>ui", opt)
map("n", "<c-z>", "u", opt)
map("i", "<c-s>", "<esc>:w<cr>", opt)
map("n", "<c-s>", ":w<cr>", opt)
map("v", "<c-s>", "<esc>:w<cr>", opt)
map("i", "<leader>a", '<esc>"ayiw', opt)
map("v", "<leader>a", '"ay', opt)
map("n", "<leader>A", '"ap', opt)
map("i", "<leader>A", '<esc>"api', opt)
map("n", "<leader>0", '"0p', opt)
map("n", "<leader>1", '"1p', opt)
map("n", "<leader>2", '"2p', opt)
map("n", "<leader>3", '"3p', opt)
map("n", "<leader>4", '"4p', opt)
map("n", "<leader>5", '"5p', opt)
map("n", "<leader>6", '"6p', opt)
map("n", "<leader>7", '"7p', opt)
map("n", "<leader>8", '"8p', opt)
map("n", "<leader>9", '"9p', opt)
map("i", "<leader>0", '<esc>"0pi', opt)
map("i", "<leader>1", '<esc>"1pi', opt)
map("i", "<leader>2", '<esc>"2pi', opt)
map("i", "<leader>3", '<esc>"3pi', opt)
map("i", "<leader>4", '<esc>"4pi', opt)
map("i", "<leader>5", '<esc>"5pi', opt)
map("i", "<leader>6", '<esc>"6pi', opt)
map("i", "<leader>7", '<esc>"7pi', opt)
map("i", "<leader>8", '<esc>"8pi', opt)
map("i", "<leader>9", '<esc>"9pi', opt)
map("v", "<leader>c", '"+y<cr>', opt)
map("n", "<leader>v", '"+p<cr>', opt)
map("i", "<leader>v", '<esc>"+p<cr>i', opt)
map("n", "Q", "", opt)
map("n", "Q", ":q<cr>", opt)
--map("n", "<leader>a", "ggVG", opt)
--map("i", "<leader>a", "<esc>ggVG", opt)
map("n", "<leader>o", ":source ~/.config/nvim/tmp/session.vim<cr>", opt)
map("n", "ss", "<Plug>(easymotion-s2)", opt)
map("n", "[b", ":bprevious<cr>", opt)
map("n", "]b", ":bnext<cr>", opt)
map("n", "]B", ":blast<cr>", opt)
map("n", "[B", ":bfirst<cr>", opt)
map("n", "<space>a", ":bfirst<cr>", opt)
map("n", "<space>b", ":bfirst<cr>:bnext<cr>", opt)
map("n", "<space>c", ":bfirst<cr>:bnext<cr>:bnext<cr>", opt)
map("n", "<space>d", ":bfirst<cr>:bnext<cr>:bnext<cr>:bnext<cr>", opt)
map("n", "<space>e", ":bfirst<cr>:bnext<cr>:bnext<cr>:bnext<cr>:bnext<cr>", opt)
map("n", "<space>9", ":blast<cr>", opt)
local searchPairs = [[<esc>/\(""\|''\|()\|{}\|[]\|><\|$\)<cr>a]] 
map("i", "<leader><leader>", searchPairs, opt)
map("i", "<leader>r", "<esc>:set fo-=r<cr>i", opt)
map("n", "dl", "ov$d", opt)
--map("n", "<cr>", "o<esc>", opt)
map("n", "<space><tab>", "i<tab><tab><tab>", opt)
-- 代码折叠
map("n", "za", ":set foldmethod=indent<cr>:set foldlevel=1<cr>", opt)
map("n", "zb", ":set foldmethod=indent<cr>:set foldlevel=2<cr>", opt)
map("n", "zc", ":set foldmethod=indent<cr>:set foldlevel=3<cr>", opt)
map("n", "zE", ":set foldlevel=99<cr>", opt)

-- html代码斜杠自动补全
--map("i", "/", "<esc><left>yiwdwa<<esc>pa></<esc>pa><esc>F<i", opt)



-- 向前、向后跳
map("n", "<C-i>", "<c-i>", opt)
map("n", "<c-o>", "<c-o>", opt)
-- 清除所有跳转
--map("i", "<c-l>", ":clearjumps", opt)

 
-- Telescope
-- 查找文件
map("n", "<C-p>", "", opt)
map("n", "<C-p>", ":Telescope find_files<CR>", opt)
-- 全局搜索
map("n", "<C-g>", ":Telescope live_grep<CR>", opt)

-- bufferline
-- 左右Tab切换
map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)
map("t", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
map("t", "<C-l>", ":BufferLineCycleNext<CR>", opt)

-- 关闭
--"moll/vim-bbye"
map("n", "<C-w>", ":Bdelete!<CR>", opt)
map("n", "<leader>bl", ":BufferLineCloseRight<CR>", opt)
map("n", "<leader>bh", ":BufferLineCloseLeft<CR>", opt)
map("n", "<leader>bc", ":BufferLinePickClose<CR>", opt)

-- 插件快捷键
local pluginKeys = {}

-- nvim-tree
-- alt + m 键打开关闭tree
map("n", "<A-m>", ":NvimTreeToggle<CR>", opt)
map("n", "tt", ":NvimTreeToggle<CR>", opt)
-- 列表快捷键
pluginKeys.nvimTreeList = {
  -- 打开文件或文件夹
  { key = {"o", "<2-LeftMouse>"}, action = "edit" },
  -- 分屏打开文件
  { key = "v", action = "vsplit" },
  { key = "h", action = "split" },
  -- 显示隐藏文件
  { key = "i", action = "toggle_custom" }, -- 对应 filters 中的 custom (node_modules)
  { key = ".", action = "toggle_dotfiles" }, -- Hide (dotfiles)
  -- 文件操作
  { key = "<F5>", action = "refresh" },
  { key = "a", action = "create" },
  { key = "d", action = "remove" },
  { key = "r", action = "rename" },
  { key = "x", action = "cut" },
  { key = "c", action = "copy" },
  { key = "p", action = "paste" },
  { key = "s", action = "system_open" },
}

-- lsp 回调函数快捷键设置
pluginKeys.mapLSP = function(mapbuf)
  -- rename
  mapbuf("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opt)
  -- code action
  mapbuf("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opt)
  -- go xx
  mapbuf("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opt)
  mapbuf("n", "gh", "<cmd>lua vim.lsp.buf.hover()<CR>", opt)
  mapbuf("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opt)
  mapbuf("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opt)
  mapbuf("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opt)
  -- diagnostic
  mapbuf("n", "gp", "<cmd>lua vim.diagnostic.open_float()<CR>", opt)
  mapbuf("n", "gk", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opt)
  mapbuf("n", "gj", "<cmd>lua vim.diagnostic.goto_next()<CR>", opt)
  mapbuf("n", "<leader>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opt)
  -- 没用到
  -- mapbuf('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opt)
  -- mapbuf("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opt)
  -- mapbuf('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opt)
  -- mapbuf('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opt)
  -- mapbuf('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opt)
  -- mapbuf('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opt)
end

-- nvim-cmp 自动补全
pluginKeys.cmp = function(cmp)
    return {
        -- 出现补全
        ["<A-.>"] = cmp.mapping(cmp.mapping.complete(), {"i", "c"}),
        -- 取消
        ["<A-,>"] = cmp.mapping({
            i = cmp.mapping.abort(),
            c = cmp.mapping.close()
        }),
        -- 上一个
        ["<C-k>"] = cmp.mapping.select_prev_item(),
        -- 下一个
        ["<C-j>"] = cmp.mapping.select_next_item(),
        -- 确认
        ["<CR>"] = cmp.mapping.confirm({
            select = true,
            behavior = cmp.ConfirmBehavior.Replace
        }),
        -- 如果窗口内容太多，可以滚动
        ["<C-u>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), {"i", "c"}),
        ["<C-d>"] = cmp.mapping(cmp.mapping.scroll_docs(4), {"i", "c"}),
    }
end

-- typescript 快捷键
pluginKeys.mapTsLSP = function(mapbuf)
  mapbuf("n", "gs", ":TSLspOrganize<CR>", opt)
  mapbuf("n", "gr", ":TSLspRenameFile<CR>", opt)
  mapbuf("n", "gi", ":TSLspImportAll<CR>", opt)
end

-- 代码注释插件
-- see ./lua/plugin-config/comment.lua
pluginKeys.comment = {
  -- Normal 模式快捷键
  toggler = {
    line = "gcc", -- 行注释
    block = "gbc", -- 块注释
  },
  -- Visual 模式
  opleader = {
    line = "gc",
    bock = "gb",
  },
}
-- ctrl + /
map("n", "<C-_>", "gcc", { noremap = false })
map("v", "<C-_>", "gcc", { noremap = false })
map("v", "gb", "gbc", { noremap = false })

return pluginKeys



