--require'alpha'.setup(require'alpha.themes.dashboard'.config)A

local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
 return
end

local ascii = require("ascii")
local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = ascii.art.planets.planets.saturn

--dashboard.section.header.val = {
--    [[  ▄▄   ▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄  ▄▄▄▄▄▄▄    ▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄  ]],
--    [[ █  █ █  █       █       █       █      ██       █  █       █       █       █       █ ]],
--    [[ █  █▄█  █  ▄▄▄▄▄█       █   ▄   █  ▄    █    ▄▄▄█  █       █   ▄   █    ▄  █    ▄▄▄█ ]],
--    [[ █       █ █▄▄▄▄▄█     ▄▄█  █ █  █ █ █   █   █▄▄▄   █     ▄▄█  █ █  █   █▄█ █   █▄▄▄  ]],
--    [[ █       █▄▄▄▄▄  █    █  █  █▄█  █ █▄█   █    ▄▄▄█  █    █  █  █▄█  █    ▄▄▄█    ▄▄▄█ ]],
--    [[  █     █ ▄▄▄▄▄█ █    █▄▄█       █       █   █▄▄▄   █    █▄▄█       █   █   █   █▄▄▄  ]],
--    [[   █▄▄▄█ █▄▄▄▄▄▄▄█▄▄▄▄▄▄▄█▄▄▄▄▄▄▄█▄▄▄▄▄▄██▄▄▄▄▄▄▄█  █▄▄▄▄▄▄▄█▄▄▄▄▄▄▄█▄▄▄█   █▄▄▄▄▄▄▄█ ]],
--}

 dashboard.section.buttons.val = {
   dashboard.button("e", "  New file", ":ene <BAR> startinsert<CR>"),
   dashboard.button("f", "  Find file", ":Telescope find_files<CR>"),
   dashboard.button("r", "  Recent files", ":Telescope oldfiles<CR>"),
   dashboard.button("t", "  Find text", ":Telescope live_grep<CR>"),
   dashboard.button("c", "  Configure", ":e ~/.config/nvim/after/plugin/alpha.lua<CR>"),
   dashboard.button("q", "  Quit", ":qa<CR>"),
}

local function footer()
 return "...- ... -.-. --- -.. .  -.-. --- .--. ."
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)
