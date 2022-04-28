require ('packerconf')
require ('lspconf')
require ('cmpconf')
require("nvim-tree").setup{}

local opt = vim.opt

-- tab
opt.shiftwidth = 4
opt.tabstop = 4
opt.expandtab = true
opt.autoindent = true
opt.smarttab = true
opt.shiftround = true

-- search
opt.hlsearch = true
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true

-- others
opt.showmatch = true
opt.wildmenu = true
opt.number = true
opt.backup = false
opt.swapfile = false
opt.scrolloff = 10
opt.mouse = a
opt.errorbells = false
opt.visualbell = true
opt.splitright = true
opt.splitbelow = true

--nvim-tree
vim.api.nvim_set_keymap("n", "<Leader>`", ":NvimTreeToggle<CR>", { noremap = true })
