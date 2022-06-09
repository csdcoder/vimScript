local packer = require("packer")
packer.startup({
  function(use)
    -- Packer 可以管理自己本身
    use 'wbthomason/packer.nvim'
    --------------------- colorschemes --------------------
    use("projekt0n/github-nvim-theme")
    use("folke/tokyonight.nvim")
    use("glepnir/zephyr-nvim")
    use("mhartington/oceanic-next")
    use({ "ellisonleao/gruvbox.nvim", requires = { "rktjmp/lush.nvim" } })
    use("ful1e5/onedark.nvim")
    use("EdenEast/nightfox.nvim")
    -------------------------------------------------------
    -- nvim-tree
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
          'kyazdani42/nvim-web-devicons', -- optional, for file icon
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    -- use({ "preservim/nerdtree" })
    -- bufferline (新增)
    use({ "akinsho/bufferline.nvim", requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" }})
    -- lualine (新增)
    use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" } })
    use("arkav/lualine-lsp-progress")
    -- telescope （新增）
    use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- dashboard-nvim (新增)
    --use("glepnir/dashboard-nvim")
    -- vim-startify
    -- use("mhinz/vim-startify")
    -- 符号对齐
    use ({ 'godlygeek/tabular' })
    -- treesitter （新增）
    use{ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }
    -- vim多光标选择
    use({ "mg979/vim-visual-multi" })
    -- easymotion
    use({"easymotion/vim-easymotion"})
    use('ZSaberLv0/vim-easymotion-chs')
    -- 注释插件
    use('numToStr/Comment.nvim')
    -- markdown
    use {'iamcco/markdown-preview.nvim'}
    -- enter选中光标所在word直至段落
    -- use('gcmt/wildfire.vim')
    -- vim-sourround
    use("tpope/vim-surround") 
    -- autopairs
    -- use("jiangmiao/auto-pairs")
    -- use("LunarWatcher/auto-pairs")
    
    --------------------- LSP --------------------
    use {
      "williamboman/nvim-lsp-installer",
      "neovim/nvim-lspconfig",
    }
    -- 补全引擎
    use("hrsh7th/nvim-cmp")
    -- snippet 引擎
    use("hrsh7th/vim-vsnip")
    -- 补全源
    use("hrsh7th/cmp-vsnip")
    use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
    use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
    use("hrsh7th/cmp-path") -- { name = 'path' }
    use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }
    -- 常见编程语言代码段
    use("rafamadriz/friendly-snippets")
    -- indent-blankline
    use("lukas-reineke/indent-blankline.nvim")
    use("tami5/lspsaga.nvim" )
    -- 代码格式化
    use({ "jose-elias-alvarez/null-ls.nvim", requires = "nvim-lua/plenary.nvim" })
    -- Json增强
    use("b0o/schemastore.nvim")
    -- ts增强
    use({ "jose-elias-alvarez/nvim-lsp-ts-utils", requires = "nvim-lua/plenary.nvim" })

  end,
  config = {
    display = {
        open_fn = function()
            return require("packer.util").float({ border = "single" })
        end,
    },
    -- 并发数限制
    max_jobs = 16,
    -- 自定义源
    git = {
      default_url_format = "https://hub.fastgit.xyz/%s",
      default_url_format = "https://mirror.ghproxy.com/https://github.com/%s",
      default_url_format = "https://gitcode.net/mirrors/%s",
      default_url_format = "https://gitclone.com/github.com/%s",
    },
  },
  pcall(
    vim.cmd,
    [[
      augroup packer_user_config
      autocmd!
      autocmd BufWritePost plugins.lua source <afile> | PackerSync
      augroup end
    ]]
  )
})
