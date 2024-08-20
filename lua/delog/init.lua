local delog = {}

function delog.delog()
  local cursor = vim.api.nvim_win_get_cursor(0)
  local row = cursor[1]
  local line = vim.api.nvim_buf_get_lines(0, row, row + 1, false)[1]
  local pad = line:match "^%s*"
  -- TODO: configure where to get this from
  local reg = vim.fn.getreg "0"
  ---@type string
  -- TODO: default format
  local fmt = vim.b.fmtstring or "%s"
  -- TODO: repeat as much as possible
  local msg = fmt:format(reg, reg)
  -- TODO: deal with multiline strings
  assert(msg:match "\n" == nil, "TODO: multiline strings")
  local result = { pad .. msg }
  vim.api.nvim_buf_set_lines(0, row, row, false, result)
end

return delog
