vim.opt.background = 'light'

vim.opt.clipboard = 'unnamedplus'
 
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
 
vim.opt.wrap = false
 
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.diagnostic.config({
    virtual_text = true,
    virtual_lines = false
})

--Start up commands
vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        vim.cmd("cd %:h")
    end,
})
vim.cmd([[colorscheme everforest]])

vim.lsp.config('clangd', {
  capabilities = capabilities,
  cmd = {
    "clangd",
    "--offset-encoding=utf-16",
  },
})
