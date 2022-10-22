-- NeuVim UI Options
neuvim.ui = {}

-- local bool2str = function(bool) return bool and "on" or "off" end

--- Toggle autopairs
function neuvim.ui.toggle_autopairs()
  local ok, autopairs = pcall(require, "nvim-autopairs")
  if ok then
    if autopairs.state.disabled then
      autopairs.enable()
    else
      autopairs.disable()
    end
    vim.g.autopairs_enabled = autopairs.state.disabled
  end
end