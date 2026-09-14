# nvim config

Личный конфиг Neovim. Назначение — редактор конфигурационных файлов и
просмотрщик кода, не полноценная IDE. LSP настроен под lua, yaml
(включая Kubernetes-манифесты и docker-compose), json, bash, markdown.

## Требования

macOS, [Homebrew](https://brew.sh).

```
brew install neovim tree-sitter-cli fzf ripgrep fd
brew install lua-language-server yaml-language-server \
  vscode-langservers-extracted bash-language-server marksman
```

- `neovim` — редактор, версия 0.12+ (используется встроенный менеджер
  плагинов `vim.pack` и LSP-API `vim.lsp.config`/`vim.lsp.enable`).
- `tree-sitter-cli` — компилирует парсеры для подсветки синтаксиса.
- `fzf`, `ripgrep`, `fd` — поиск файлов и грепа (`fzf-lua`).
- LSP-серверы — по одному на язык, ставятся напрямую через brew, без
  дополнительного менеджера вроде mason.nvim.

## Плагины

Управляются встроенным `vim.pack` (`lua/config/plugins.lua`), список
версий зафиксирован в `nvim-pack-lock.json`. Обновление — `:packupdate`.

## Структура

```
init.lua               -- точка входа, require по порядку
lua/config/
  options.lua           -- vim.opt, отступы
  keymaps.lua            -- кеймапы
  plugins.lua            -- vim.pack.add + настройка плагинов
  theme.lua               -- colorscheme
  treesitter.lua          -- парсеры и включение подсветки
  lsp.lua                 -- vim.lsp.enable + настройки серверов
  autocmds.lua            -- автосохранение
lsp/<name>.lua           -- переопределения LSP-конфигов (если появятся)
```

## Kubernetes-схемы в YAML

Схема `kubernetes` в yaml-language-server подключена по путям:
`**/k8s/**`, `**/manifests/**`, `**/kubernetes/**`, `*.k8s.yaml`.
Для файла вне этих путей — модлайн в начале файла:

```yaml
# yaml-language-server: $schema=https://url/to/schema.json
```

docker-compose определяется автоматически через SchemaStore, без
дополнительной настройки.

