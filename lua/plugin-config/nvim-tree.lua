local status,nvim_tree = pcall(require, "nvim-tree")
if not status then
    vim.notify("没有找到 nvim-tree")
  return
end

-- 列表操作快捷键
local list_keys = require('keybindings').nvimTreeList
nvim_tree.setup{
    hijack_netrw = false,
    -- 不显示 git 状态图标
    git = {
        enable = false,
    },
    -- project plugin 需要这样设置
    update_cwd = false,
    update_focused_file = {
        enable = false,
        update_cwd = false,
    },
    -- 隐藏 .文件 和 node_modules 文件夹
    filters = {
        dotfiles = true,
        --custom = { 'node_modules' },
    },
    view = {
        -- 宽度
        --width = 40,
        -- 也可以 'right'
        side = 'left',
        -- 隐藏根目录
        hide_root_folder = false,
        -- 自定义列表中快捷键
        mappings = {
            custom_only = false,
            list = list_keys,
        },
        -- 不显示行数
        number = false,
        relativenumber = false,
        -- 显示图标
        signcolumn = 'yes',
    },
    actions = {
        change_dir = {
          enable = false  
        },
        open_file = {
            -- 首次打开大小适配
            resize_window = true,
            -- 打开文件时关闭
            --quit_on_open = true,
        },
    },
    hijack_directories = {
      enable = false,
      auto_open = false,
    },
    -- wsl install -g wsl-open
    -- https://github.com/4U6U57/wsl-open/
    system_open = {
        cmd = 'wsl-open', -- mac 直接设置为 open
    },
}
-- 自动关闭
vim.cmd([[
  autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif
]])


--[[
P	parent_node	move cursor to the parent directory
<BS>	close_node	close current opened directory or parent
x	cut	add/remove file/directory to cut clipboard
c	copy	add/remove file/directory to copy clipboard
p	paste	paste from clipboard; cut clipboard has precedence over copy; will prompt for confirmation
y	copy_name	copy name to system clipboard
Y	copy_path	copy relative path to system clipboard
gy	copy_absolute_path	copy absolute path to system clipboard
<C-k>	toggle_file_info(显示文件信息)	toggle a popup with file infos about the file under the cursor

--]]
