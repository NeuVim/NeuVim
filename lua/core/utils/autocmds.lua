local cmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

augroup("auto_quit", { clear = true })
cmd("BufEnter", {
  desc = "Quit NeuVim if more than one window is open and only sidebar windows are list",
  group = "auto_quit",
  callback = function()
    local wins = vim.api.nvim_tabpage_list_wins(0)
    -- Both neo-tree and aerial will auto-quit if there is only a single window left
    if #wins <= 1 then return end
    local sidebar_fts = { aerial = true, ["nvim-tree"] = true }
    for _, winid in ipairs(wins) do
      if vim.api.nvim_win_is_valid(winid) then
        local bufnr = vim.api.nvim_win_get_buf(winid)
        -- If any visible windows are not sidebars, early return
        if not sidebar_fts[vim.api.nvim_buf_get_option(bufnr, "filetype")] then return end
      end
    end
    if #vim.api.nvim_list_tabpages() > 1 then
      vim.cmd.tabclose()
    else
      vim.cmd.qall()
    end
  end,
})
