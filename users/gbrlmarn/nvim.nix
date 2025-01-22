''
  vim.opt.tabstop = 4
  vim.opt.softtabstop = 4
  vim.opt.shiftwidth = 4
  vim.opt.expandtab = true
  vim.opt.smartindent = true
  vim.opt.number = true
  vim.opt.ruler = true
  vim.opt.ai = true
  vim.opt.hlsearch = false

  require('dracula').setup({
    colors = {
        bg = "#000000",
    },
  })
  vim.cmd("colorscheme dracula")

  vim.g.mapleader = ","

  vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, {desc = 'Telescope find files'})
  vim.keymap.set('n', '<leader>fh', require('telescope.builtin').help_tags, {desc = 'Telescope help tags'})
  vim.keymap.set('n', '<leader>fg', require('telescope.builtin').live_grep, {desc = 'Telescope live grep'})
  vim.keymap.set('n', '<leader>fb', require('telescope.builtin').buffers, {desc = 'Telescope buffers'})

  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  require'lspconfig'.gopls.setup{}
''
