local my_colors = {
  waveBlue1 = "#223045",
  waveBlue2 = "#152338",
}

require 'kanagawa'.setup({
  commentStyle = { italic = false },
  functionStyle = {},
  keywordStyle = { italic = false },
  statementStyle = { bold = true },
  typeStyle = {},
  variablebuiltinStyle = { italic = false },
  specialReturn = true,
  specialException = true,
  terminalColors = true,
  colors = {
    palette = my_colors,
  }
}
)
