-- default colorscheme, just in-case it doesn't load ours
local colorscheme = murphy
-- set colorscheme to catppuccin with protected call
-- in case it isn't installed
local status, _ = pcall(vim.cmd, "colorscheme catppuccin")
if not status then
  vim.notify("Colorscheme " .. colorscheme .. " not found!") -- print error if colorscheme not installed
  return
end

-- Highlight the region on yank
vim.api.nvim_create_autocmd("TextYankPost", {
	group = yank_group,
	pattern = "*",
	callback = function()
		vim.highlight.on_yank({
			-- higroup = "Visual"
			higroup = "IncSearch",
			timeout = 120,
		})
	end,
})
