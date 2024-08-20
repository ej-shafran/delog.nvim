local delog = {}

function delog.delog()
  local cursor = vim.api.nvim_win_get_cursor(0)
  local row = cursor[1]
  -- TODO: default format
  local fmt = vim.b.fmtstring or "%s"
  -- TODO: respect whitespace
  vim.api.nvim_buf_set_lines(0, row, row, false, { fmt:format "hello" })
end

return delog
