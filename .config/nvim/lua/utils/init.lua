local cmd = vim.cmd

local function hi(group, opts)
 local bg = opts.bg and "guibg=" .. opts.bg or "guibg=NONE"
 local fg = opts.fg and "guifg=" .. opts.fg or "guifg=NONE"
 local gui = opts.gui and "gui=" .. opts.gui or "gui=NONE"
 cmd(string.format("hi! %s %s %s %s", group, bg, fg, gui))
end

local function hi_groups(groups)
 for k, v in pairs(groups) do
   hi(k, v)
 end
end

return hi_groups
