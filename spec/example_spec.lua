describe("Test example", function()
  it("Test can access vim namespace", function()
    assert.are.same(vim.trim "  a ", "a")
  end)
end)
