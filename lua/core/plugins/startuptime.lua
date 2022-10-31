-- import comment plugin safely
local setup, startuptime = pcall(require, "startuptime")
if not setup then return end
