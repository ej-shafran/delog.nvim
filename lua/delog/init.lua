local delog = {}

function delog.delog()
  local cursor = vim.api.nvim_win_get_cursor(0)
  local row = cursor[1]
  local reg = vim.fn.getreg "0"
  -- TODO: default format
  local fmt = vim.b.fmtstring or "%s"
  local result = vim.split(fmt:format(reg), "\n")
  -- TODO: respect whitespace
  vim.api.nvim_buf_set_lines(0, row, row, false, result)
end

return delog
