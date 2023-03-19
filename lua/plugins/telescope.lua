require("telescope").setup {
      pickers = {
        live_grep = {
          additional_args = function(opts)
            return {"--hidden"}
          end
        },
        find_files = {
          --- --no-ignore
          find_command = {"rg", "--hidden", "--files"}
        }
  }
}
