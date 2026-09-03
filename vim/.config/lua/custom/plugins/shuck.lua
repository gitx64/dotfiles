-- Shuck LSP configuration for shell scripts
vim.pack.add ({'https://github.com/ewhauser/shuck'})

vim.lsp.config('shuck', {
  cmd = {'shuck', 'server'},
  filetypes = { "sh", "bash", "zsh", "ksh" },
  root_markers = { ".shuck.toml", "shuck.toml", ".git" },
})

vim.lsp.enable('shuck')
