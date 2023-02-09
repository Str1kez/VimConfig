nvim_lsp.yamlls.setup{
  settings = {
    yaml = {
      schemas = require('schemastore').json.schemas {
        select = {
          'docker-compose.yml',
        },
      },
      validate = { enable = true },
      -- format = {
      --   enable = true,
      -- },
      -- schemas = {
      --   ["https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json"] = "/*",
      -- },
    },
  }
}
