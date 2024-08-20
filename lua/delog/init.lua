local delog = {}

function delog.delog()
  local cursor = vim.api.nvim_win_get_cursor(0)
  local row = cursor[1]
  -- TODO: configure where to get this from
  local reg = vim.fn.getreg "0"
  -- TODO: default format
  local fmt = vim.b.fmtstring or "%s"
  -- TODO: repeat as much as possible
  local result = vim.split(fmt:format(reg, reg), "\n")
  -- TODO: respect whitespace
  vim.api.nvim_buf_set_lines(0, row, row, false, result)
end

return delog
