local cmd, g
do
  local _obj_0 = vim
  cmd, g = _obj_0.cmd, _obj_0.g
end
local _ = o
g.dashboard_default_executive = "telescope"
g.dashboard_custom_shortcut = {
  last_session = "SPC s l",
  find_history = "SPC s h",
  find_file = "SPC .  ",
  new_file = "SPC f n",
  change_colorscheme = "SPC s c",
  find_word = "SPC s s",
  book_marks = "SPC s b"
}
