local g              = vim.g
-- let g:nvim_tree_side = 'right' | 'left' "left by default
-- let g:nvim_tree_width = 40 "30 by default
-- let g:nvim_tree_ignore = [ '.git', 'node_modules', '.cache' ] "empty by default
-- let g:nvim_tree_auto_open = 1 "0 by default, opens the tree when typing `vim $DIR` or `vim`
-- let g:nvim_tree_auto_close = 1 "0 by default, closes the tree when it's the last window
-- let g:nvim_tree_quit_on_open = 1 "0 by default, closes the tree when you open a file
-- let g:nvim_tree_follow = 1 "0 by default, this option allows the cursor to be updated when entering a buffer
-- let g:nvim_tree_indent_markers = 1 "0 by default, this option shows indent markers when folders are open
-- let g:nvim_tree_hide_dotfiles = 1 "0 by default, this option hides files and folders starting with a dot `.`
-- let g:nvim_tree_git_hl = 1 "0 by default, will enable file highlight for git attributes (can be used without the icons).
-- let g:nvim_tree_root_folder_modifier = ':~' "This is the default. See :help filename-modifiers for more options
-- let g:nvim_tree_tab_open = 1 "0 by default, will open the tree when entering a new tab and the tree was previously open
-- let g:nvim_tree_width_allow_resize  = 1 "0 by default, will not resize the tree when opening a file
-- let g:nvim_tree_show_icons = {
    -- \ 'git': 1,
    -- \ 'folders': 0,
    -- \ 'files': 0,
    -- \ }

-- Tree Mapping
g.nvim_tree_bindings = {
    edit             = {'<CR>', 'o'},
    edit_vsplit      = '<C-v>',
    edit_split       = '<C-x>',
    edit_tab         = '<C-t>',
    close_node       = {'<S-CR>', '<BS>'},
    toggle_ignored   = 'I',
    toggle_dotfiles  = 'H',
    refresh          = 'R',
    preview          = '<Tab>',
    cd               = '<C-]>',
    create           = 'a',
    remove           = 'd',
    rename           = 'r',
    cut              = 'x',
    copy             = 'c',
    paste            = 'p',
    prev_git_item    = '[c',
    next_git_item    = ']c',
    dir_up           = '-',
    close            = 'q',
}
-- Default Icon
g.nvim_tree_icons = {
    default       = '',
    symlink       = '',
    git           = {
        unstaged  = "✗",
        staged    = "✓",
        unmerged  = "",
        renamed   = "➜",
        untracked = "★"
    },
    folder        = {
        default   = "",
        open      = "",
        symlink   = "",
    }
}

