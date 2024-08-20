local function set(mode, lhs, rhs, opts)
  vim.keymap.set(mode, lhs, rhs, opts or {})
end

local function plug(mode, name, rhs, opts)
  set(mode, ("<Plug>(%s)"):format(name), rhs, vim.tbl_extend("force", { noremap = true }, opts or {}))
end

local function with_require(func_name)
  return function(...)
    require("delog")[func_name](...)
  end
end

plug("n", "Delog", with_require "delog")
