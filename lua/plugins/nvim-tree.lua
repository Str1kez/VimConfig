require("nvim-tree").setup({
    sort_by = "case_sensitive",
    view = {
        adaptive_size = true,
        mappings = {
        list = {
            { key = "=", action = "cd" },
        },
        },
    },
    renderer = {
        group_empty = true,
    },
    actions = {
      open_file = {
        resize_window = true,
      },
    },
    filters = {
        dotfiles = true,
    },
  }
)

