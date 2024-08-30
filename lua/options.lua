local options = {
  backup = false,
  clipboard = "unnamedplus",
  cmdheight = 1,
  completeopt = { "menuone", "noselect" },
  conceallevel = 2,
  fileencoding = "utf-8",
  hlsearch = true,
  ignorecase = true,
  mouse = "a",
  pumheight = 10,
  showmode = false,
  showtabline = 2,
  smartcase = true,
  smartindent = true,
  splitbelow = true,
  splitright = true,
  swapfile = false,
  termguicolors = true,
  timeoutlen = 1000,
  undofile = true,
  updatetime = 300,
  writebackup = false,
  expandtab = true,
  shiftwidth = 2,
  tabstop = 2,
  cursorline = true,
  number = true,
  relativenumber = true,
  numberwidth = 2,
  signcolumn = "yes",
  wrap = false,
  linebreak = true,
  scrolloff = 8,
  sidescrolloff = 8,
  guifont = "monospace:h17",
  whichwrap = "bs<>[]hl",
}

local opt = vim.opt

vim.bo.modifiable = true

for k, v in pairs(options) do
  opt[k] = v
end

opt.shortmess = "c"
opt.iskeyword:append "-"
opt.formatoptions:remove({ "c", "r", "o" })
opt.runtimepath:remove("/usr/share/vim/vimfiles")

require("catppuccin").setup({
  integrations = {
    cmp = true,
    gitsigns = true,
    treesitter = true,
    notify = true,
    alpha = true
  }
})

lvim.colorscheme = "catppuccin-mocha"
vim.lsp.inlay_hint.enable(true)

lvim.lsp.on_attach_callback = function(client, bufnr)
  require"lsp_signature".on_attach()
end
