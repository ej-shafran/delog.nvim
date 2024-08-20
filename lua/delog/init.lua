local delog = {}

function delog.delog()
  local cursor = vim.api.nvim_win_get_cursor(0)
  local lnum = cursor[1]
  local line = vim.api.nvim_buf_get_lines(0, lnum, lnum + 1, false)[1]
  local padding = line:match "^%s*"
  -- TODO: configure where to get this from
  local register = vim.fn.getreg "0"
  ---@type string
  -- TODO: default format
  local format = vim.b.fmtstring or "%s"
  -- TODO: repeat as much as possible
  local message = format:format(register, register)
  -- TODO: deal with multiline strings
  assert(message:match "\n" == nil, "TODO: multiline strings")
  local result = { padding .. message }
  vim.api.nvim_buf_set_lines(0, lnum, lnum, false, result)
end

return delog
