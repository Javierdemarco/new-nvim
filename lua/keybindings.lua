local function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then options = vim.tbl_extend("force", options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end


map("n", "<F2>", ":Telescope<CR>")
map("n", "<F4>", ":LazyGit<CR>")
map("n", "<F5>", ":PackerSync<CR>")
map("n", "shift-<F5>", ":luafile %<CR>")
map("n", "<F6>", ":NvimTreeToggle<CR>")
map("n", "<F7>", ":ToggleTerm<CR>")

-- Navigate buffers
map("n", "<S-l>", "<cmd>BufferLineCycleNext<CR>", opts)
map("n", "<S-h>", "<cmd>BufferLineCyclePrev<CR>", opts)
