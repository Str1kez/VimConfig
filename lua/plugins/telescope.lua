require("telescope").setup {
      pickers = {
          live_grep = {
              additional_args = function(opts)
                  return {"--hidden", "--no-ignore"}
              end
          },
        find_files = {
          find_command = {"rg", "--no-ignore", "--hidden", "--files"}
          -- hidden = true,
          -- ignore = true
        }
  }
}
