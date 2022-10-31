-- import dashboard plugin safely
local status, db = pcall(require, "dashboard")
if not status then return end

local home = os.getenv "HOME"

db.default_banner = {
  "",
  "",
  " ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
  " ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
  " ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
  " ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
  " ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
  " ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝",
  "",
  " [ TIP: To exit Neovim, just power off your computer. ] ",
  "",
}

db.preview_file_height = 11
db.preview_file_width = 70
db.custom_center = {
  {
    icon = "  ",
    desc = "Browse all files                        ",
    shortcut = "SPC f a",
    action = "SPC f a",
  },
  {
    icon = "  ",
    desc = "Find recent files                       ",
    action = "Telescope oldfiles",
    shortcut = "SPC f r",
  },
  {
    icon = "  ",
    desc = "Find files                              ",
    action = "Telescope find_files find_command=rg,--hidden,--files",
    shortcut = "SPC f f",
  },
  {
    icon = "  ",
    desc = "File browser                            ",
    action = "Telescope file_browser",
    shortcut = "SPC f b",
  },
  {
    icon = "  ",
    desc = "Find word                               ",
    action = "Telescope live_grep",
    shortcut = "SPC f w",
  },
  {
    icon = "  ",
    desc = "Load new theme                          ",
    action = "Telescope colorscheme",
    shortcut = "SPC h t",
  },
}
db.custom_footer = { "", "🎉 If I'm using Neovim, then you must be learning all this new stuff at once!" }
db.session_directory = "home/.config/nvim/session"
