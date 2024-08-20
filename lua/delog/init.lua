local delog = {}

function delog.delog()
  local cursor = vim.api.nvim_win_get_cursor(0)
  local row = cursor[1]
  vim.api.nvim_buf_set_lines(0, row, row, false, { "Hello from delog" })
end

return delog
