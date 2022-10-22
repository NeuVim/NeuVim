local status_ok, which_key = pcall(require, "which-key")
if not status_ok then
  return
end

-- local show = which_key.show

which_key.setup {
  window = {
    border = "rounded",
    padding = { 2, 2, 2, 2 },
  },
}
