-- TODO: some way to tell the format, so we can use the correct one
vim.api.nvim_buf_set_var(0, 'fmtstring', 'printf("%s = %%s", %s);')
