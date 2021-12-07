-- Options
local Type = {GLOBAL_OPTION = "o"}
local add_options = function(option_type, options)
  if type(options) ~= "table" then
    error 'options should be a type of "table"'
    return
  end
  local vim_option = vim[option_type]
  for key, value in pairs(options) do
    vim_option[key] = value
  end
end
local Option = {}
Option.g = function(options)
  add_options(Type.GLOBAL_OPTION, options)
end

Option.g {
    termguicolors = true,
    startofline = true,
	expandtab = true,
    errorbells = true,
    tabstop = 4,
    softtabstop = 4,
    shiftwidth = 4,
    hidden = true,
    signcolumn = 'yes',
    modelines = 0,
    relativenumber = true,
    number = true,
    numberwidth = 4,
    undofile = true,
    spell = true,
    title = true,
    ignorecase = true,
    smartcase = true,
    wildmode = 'longest:full,full',
    list = true,
    listchars = 'tab:▸·,trail:·',
    mouse = 'a',
    scrolloff = 8,
    sidescrolloff = 8,
    joinspaces = false,
    clipboard = 'unnamedplus',
    confirm = true,
    backup = true,
    writebackup = false,
    backupdir = '$HOME/.local/share/nvim/backup//',
    undodir = '$HOME/.local/share/nvim/undo//',
    directory = '$HOME/.local/share/nvim/swap//',
    updatetime = 300,
    redrawtime = 10000,
    swapfile = false,
    incsearch = true,
    foldenable = false,
    foldlevel = 4,
    foldmethod = 'syntax',
    synmaxcol = 300,
    laststatus = 2,
    showmatch  = true,
    showcmd = true,
    autoindent = true,
    smartindent = true,
    formatoptions = 'qnj1',
}
vim.g.clipboard = {
  name = "macOS-clipboard",
  copy = {["+"] = "pbcopy", ["*"] = "pbcopy"},
  paste = {["+"] = "pbpaste", ["*"] = "pbpaste"},
  cache_enabled = false
}

vim.g.mapleader = " "
vim.g.one_allow_italics = true
vim.g.tokyonight_style = "night"
vim.g.tokyonight_terminal_colors = true
vim.g.tokyonight_italic_comments = true
vim.g.tokyonight_dark_sidebar = true
vim.g.tokyonight_lualine_bold = true
vim.g.override_nvim_web_devicons = true
vim.g.table_mode_corner = "|"

vim.cmd[[colorscheme tokyonight]]

return Option
