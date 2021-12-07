local Plug = require "util.vimplug"

Plug.begin("~/.config/nvim/plugged")

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

-- Plug 'jiangmiao/auto-pairs'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'wbthomason/packer.nvim'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'AndrewRadev/switch.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-surround'
Plug('terrortylor/nvim-comment', {
    config = function()
        require('nvim_comment').setup(
            {
                hook = function()
                    require('ts_context_commentstring.internal').update_commentstring()
                end
            }
        )
    end
})

Plug 'JoosepAlviste/nvim-ts-context-commentstring'

Plug 'junegunn/vim-easy-align'
Plug 'junegunn/goyo.vim'
Plug 'tmux-plugins/vim-tmux'
Plug 'mhinz/vim-sayonara'
Plug 'ojroques/nvim-bufdel'
Plug 'mg979/vim-visual-multi'
Plug 'yukimemi/dps-asyngrep'
Plug 'Xuyuanp/yanil'
Plug('lukas-reineke/indent-blankline.nvim',{
    config = function()
        vim.g.indent_blankline_buftype_exclude = {"terminal"}
        vim.g.indent_blankline_filetype_exclude = {"help", "startify", "dashboard", "packer", "Yanil"}
        vim.g.indent_blankline_char = "¦"
        vim.g.indent_blankline_use_treesitter = false
        vim.g.indent_blankline_show_current_context = false
        vim.g.indent_blankline_show_trailing_blankline_indent = false
  end
})
Plug 'hoob3rt/lualine.nvim'
Plug 'akinsho/nvim-bufferline.lua'

-- Colors
Plug 'folke/tokyonight.nvim'
-- Plug 'morhetz/gruvbox'
-- Plug 'Khaledgarbaya/night-owl-vim-theme'
-- Plug 'mhartington/oceanic-next'

-- Editor Config
Plug 'editorconfig/editorconfig-vim'

-- Git
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'sgeb/vim-diff-fold'
Plug('lewis6991/gitsigns.nvim', {
    config = function()
        require "gitsigns".setup {
            debug_mode = false,
            signs = {
                add = {hl = "GitGutterAdd", text = "│"},
                change = {hl = "GitGutterChange", text = "│"},
                delete = {hl = "GitGutterDelete", text = "_"},
                topdelete = {hl = "GitGutterDelete", text = "‾"},
                changedelete = {hl = "GitGutterChangeDelete", text = "~"}
          }
        }
    end
})
Plug 'pwntester/octo.nvim'
-- Plug 'TimUntersberger/neogit'

-- -- Markdown
Plug('tpope/vim-markdown', {ft = 'markdown'})
Plug 'rhysd/vim-grammarous'
Plug('nelstrom/vim-markdown-folding', {ft = 'markdown'})
Plug 'dhruvasagar/vim-table-mode'
Plug('iamcco/markdown-preview.nvim', {
    run = "cd app && yarn install"
})

-- Python
Plug('tmhedberg/SimpylFold', {ft = 'python'})
-- JS/TS
Plug 'othree/yajs.vim'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'heavenshell/vim-jsdoc'
Plug 'elzr/vim-json'
Plug 'neoclide/jsonc.vim'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'Quramy/vison'
Plug 'jxnblk/vim-mdx-js'
-- HTML
Plug 'othree/html5.vim'
Plug 'mattn/emmet-vim'
Plug 'posva/vim-vue'
Plug 'skwp/vim-html-escape'
Plug 'kana/vim-textobj-user'
Plug 'whatyouhide/vim-textobj-xmlattr'
Plug 'pedrohdz/vim-yaml-folds'
-- CSS
Plug 'hail2u/vim-css3-syntax'
Plug'norcalli/nvim-colorizer.lua'

-- -- Local
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-treesitter/playground'

Plug 'mhartington/formatter.nvim'

Plug 'hrsh7th/nvim-compe'
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'
--
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-github.nvim'
Plug 'nvim-telescope/telescope-node-modules.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

Plug 'kyazdani42/nvim-web-devicons'
-- Plug 'yamatsum/nvim-nonicons'
Plug 'mjlbach/neovim-ui'

Plug 'dstein64/vim-startuptime'

Plug.ends()
