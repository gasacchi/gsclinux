local g
g = vim.g
g.indent_blankline_show_first_indent_level = false
g.indent_blankline_filetype_exclude = {
  "dashboard",
  "help",
  "packer"
}
g.indent_blankline_char = "▏"
