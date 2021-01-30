-- Description: Xiketic Colorscheme for neovim
-- Author: Gasacchi <6asacchi@gmail.com>
-- Source: https://github.com/gasacchi/yuno.nvim
-- TODO: better code

local lualine       = require 'lualine'
local hi_groups     = require 'utils'
local palette       = require 'yuno.palette'

-- User define configuration
-- vim.cmd('let g:yuno_italic=0')
local hard_contrast = vim.g.yuno_contrast == 'hard'
local underline     = vim.g.yuno_underline == 0 and 'NONE' or 'underline'
local italic        = vim.g.yuno_italic == 0 and 'NONE' or 'italic'
local bold_italic   = vim.g.yuno_italic == 0 and 'bold' or 'bold,italic'
local chg_diag_sign = vim.g.yuno_change_diagnostics_sign == 0


local colors        = hard_contrast and palette.hard or palette.soft

local yuno          = {
  bg                = palette.background,
  blue              = colors.blue,
  builtin           = { fg = colors.purple, gui = 'bold' },
  boolean           = { fg = colors.purple, gui = 'bold' },
  comment           = { fg = palette.comment },
  condition         = { fg = colors.pink, gui = bold_italic },
  delimiter         = { fg = colors.yellow },
  error             = palette.error,
  warning           = palette.warning,
  noise             = { fg = colors.cyan, gui = 'bold' },
  info              = palette.info,
  hint              = palette.hint,
  cyan              = colors.cyan,
  fg                = colors.white,
  green             = colors.green,
  pink              = colors.pink,
  purple            = colors.purple,
  red               = colors.red,
  xiketic           = colors.xiketic,
  yellow            = colors.yellow,
}

local yuno_ = {
  bg                = { bg = palette.background },
  fg                = { fg = colors.white },
  xiketic           = { fg = colors.xiketic },
  purple            = { fg = colors.purple },
  red               = { fg = colors.red },
  green             = { fg = colors.green },
  blue              = { fg = colors.blue },
  pink              = { fg = colors.pin },
  cyan              = { fg = colors.cyan },
  comment           = { fg = palette.comment },
  info              = { fg = palette.info },
  error             = { fg = palette.error },
  hint              = { fg = palette.hint },
  warning           = { fg = palette.warning },
}

--function withStyle(style, table)
--  local new = {}
--  for k, v in pairs(table) do
--    new.gui = style
--    new[k] = v
--  end
--
--  return new
--end
--local a = withStyle('bold', { fg = colors.blue })
--for k, v in pairs(a) do
--  -- print(string.format("%s = %s", k,v))
--end

-- Editor Hightlight Groups [[
local groups = {
-- Editor Hightlight Groups [[
  ColorColumn       = { bg = yuno.purple },
  Cursor            = { fg = yuno.pink },
  CursorColumn      = { bg = yuno.xiketic },
  CursorLine        = { bg = yuno.xiketic },
  CursorLineNr      = { bg = yuno.xiketic, fg = yuno.pink, gui = 'bold' },
  DiffAdd           = { fg = yuno.green },
  DiffChange        = { fg = yuno.yellow },
  DiffDelete        = { fg = yuno.pink },
  DiffText          = { fg = yuno.blue },
  Directory         = { fg = yuno.blue, gui = 'bold' },
  EndOfBuffer       = { bg = yuno.bg, fg = yuno.bg },
  ErrorMsg          = yuno.error,
  FoldColumn        = { fg = yuno.yellow },
  Folded            = { fg = yuno.xiketic, gui = italic },
  IncSearch         = { bg = yuno.yellow, fg = yuno.bg },
  LineNr            = { fg = yuno.purple },
  MatchParen        = { bg = yuno.pink, fg = yuno.xiketic, gui = 'bold' },
  Normal            = { bg = yuno.bg, fg = yuno.fg },
  NormalFloat       = { bg = yuno.purple },
  NormalNC          = { bg = yuno.bg , fg = yuno.blue},
  Pmenu             = { bg = yuno.xiketic, fg = yuno.pink },
  PmenuSbar         = { bg = yuno.xiketic },
  PmenuSel          = { bg = yuno.purple, fg = yuno.pink, gui = 'bold' },
  PmenuThumb        = { bg = yuno.purple },
  Search            = { bg = yuno.purple, fg = yuno.xiketic },
  SignColumn        = { fg = yuno.yellow },
  SpecialKey        = { bg = yuno.green },
  SpellBad          = { sp = yuno.pink, gui = underline },
  SpellCap          = { sp = yuno.yellow, gui = underline },
  SpellLocal        = { sp = yuno.cyan, gui = underline },
  SpellRare         = { sp = yuno.blue, gui = underline },
  Substitute        = { bg = yuno.blue, fg = yuno.bg },
  TabLine           = { bg = yuno.xiketic, fg = yuno.pink },
  TabLineFill       = { bg = yuno.xiketic, fg = yuno.pink },
  TabLineSel        = { bg = yuno.purple, fg = yuno.xiketic, gui = 'bold'},
  Title             = { fg = yuno.pink },
  VertSplit         = { bg = yuno.xiketic, fg = yuno.purple },
  Visual            = { bg = yuno.blue, fg = yuno.bg },
  VisualNOS         = { bg = yuno.blue , fg = yuno.bg},
  WarningMsg        = { fg = yuno.yellow, gui = italic },
  -- Whitespace        = { bg = yuno.yellow }, -- TODO: i don't know where this is
-- ]]

-- Default Syntax Highlight Groups [[
  Comment           = yuno.comment,

  -- Constant
  Boolean           = yuno.boolean,
  Character         = { fg = yuno.green, gui = 'bold' },
  Constant          = { fg = yuno.purple, gui = 'bold'},
  Float             = { fg = yuno.yellow },
  Number            = { fg = yuno.yellow },
  String            = { fg = yuno.pink},

  -- Identifier
  Function          = { fg = yuno.pink, gui = italic },
  Identifier        = { fg = yuno.pink },

  -- Statement
  Conditional    = yuno.condition,
  Exception      = { fg = yuno.purple, gui = italic },
  Keyword        = { fg = yuno.purple },
  Label          = { fg = yuno.purple, gui = italic },
  Operator       = { fg = yuno.red, gui = 'bold' },
  Repeat         = { fg = yuno.purple, gui = italic },
  Statement      = { fg = yuno.pink, gui = bold_italic },

  -- PreProc
  Define         = { fg = yuno.purple },
  Include        = { fg = yuno.blue },
  Macro          = { fg = yuno.purple },
  PreCondit      = { fg = yuno.yellow },
  PreProc        = { fg = yuno.yellow },

  -- Type
  StorageClass   = { fg = yuno.yellow },
  Structure      = { fg = yuno.red },
  Type           = { fg = yuno.yellow, gui= italic },
  Typedef        = { fg = yuno.yellow },

  -- Special
  Debug          = {},
  Delimiter      = {},
  Special        = { fg = yuno.blue },
  SpecialChar    = {},
  SpecialComment = { fg = yuno.pink, gui = 'bold' },
  Tag            = { fg = yuno.yellow },

  -- Etc
  Error          = yuno.error,
  Ignore         = {},
  Todo           = { fg = yuno.yellow, gui = 'bold' },
  Underlined     = { gui = underline },

-- ]]

-- LSP Group Highlight [[
  LspDiagnosticsDefaultError = { fg = yuno.error },
  LspDiagnosticsSignError = { fg = yuno.error, gui = 'bold' },
  LspDiagnosticsFloatingError = { fg = yuno.error },
  LspDiagnosticsUnderlineError = { fg = yuno.error, gui = underline },
  LspDiagnosticsDefaultWarning = { fg = yuno.warning },
  LspDiagnosticsSignWarning = { fg = yuno.warning, gui = 'bold' },
  LspDiagnosticsFloatingWarning = { fg = yuno.warning },
  LspDiagnosticsUnderlineWarning = { fg = yuno.warning, gui = 'undercurl' },
  LspDiagnosticsDefaultInformation = { fg = yuno.info },
  LspDiagnosticsSignInformation = { fg = yuno.info, gui = 'bold' },
  LspDiagnosticsFloatingInformation = { fg = yuno.info },
  LspDiagnosticsUnderlineInformation = { fg = yuno.info, gui = underline },
  LspDiagnosticsDefaultHint = { fg = yuno.hint },
  LspDiagnosticsSignHint = { fg = yuno.hint, gui = 'bold' },
  LspDiagnosticsFloatingHint = { fg = yuno.hint },
  LspDiagnosticsUnderlineHint = { fg = yuno.hint, gui = underline },
-- ]]

-- Language Syntax Highlight [[
  -- Lua
  -- lua.vim (tbastos/vim-lua)
  luaBraces         = yuno.delimiter,
  luaBrackets       = yuno.delimiter,
  luaBuiltIn        = yuno.builtin,
  luaComma          = yuno.noise,
  luaCond           = yuno.condition,
  luaConstant       = yuno.boolean,
  luaEllipsis       = { fg = yuno.green, gui = 'bold' },
  luaErrHand        = { fg = yuno.red, gui = 'bold' },
  -- luaError          = yuno.e,
  luaFuncArgComma   = { fg = yuno.cyan},
  luaFuncArgName    = { fg = yuno.blue},
  luaFuncCall       = { fg = yuno.red, gui = italic },
  luaFuncId         = { fg = yuno.cyan, gui = 'bold'},
  luaFuncKeyword    = { fg = yuno.blue, gui = bold_italic },
  luaFuncName       = { fg = yuno.red, gui = italic},
  luaFuncParens     = { fg = yuno.yellow },
  luaFuncTable      = { fg = yuno.yellow, gui = 'bold'},
  luaIn             = { fg = yuno.red, gui = bold_italic },
  luaLocal          = { fg = yuno.red, gui = bold_italic },
  luaNoise          = yuno.noise,
  luaNumber         = { fg = yuno.yellow },
  luaOperator       = { fg = yuno.red, gui = 'bold' },
  luaParens         = yuno.delimiter,
  luaRepeat         = { fg = yuno.pink, gui = bold_italic },
  luaSpecialTable   = yuno.builtin,
  luaSpecialValue   = yuno.builtin,
  luaStatement      = { fg = yuno.pink, gui = 'bold' },
  luaString         = { fg = yuno.pink },
  luaStringSpecial  = { fg = yuno.green, gui = 'bold' },
  luaSymbolOperator = { fg = yuno.red, gui = 'bold' },


  -- Nvim-Tree
  NvimTreeFolderIcon = { fg = yuno.blue },
}

hi_groups(groups)

-- change diagnostics sign
if not chg_diag_sign then
  vim.cmd('sign define LspDiagnosticsSignError text= texthl=LspDiagnosticsSignError linehl= numhl=')
  vim.cmd('sign define LspDiagnosticsSignWarning text= texthl=LspDiagnosticsSignWarning linehl= numhl=')
  vim.cmd('sign define LspDiagnosticsSignInformation text= texthl=LspDiagnosticsSignInformation linehl= numhl=')
  vim.cmd('sign define LspDiagnosticsSignHint text=ﯦ texthl=LspDiagnosticsSignHint linehl= numhl=')
end

