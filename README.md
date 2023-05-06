# VimConfig
## Requirements
`npm`, `ripgrep`, `fd`, `tree-sitter`
```commmandline
sudo npm install -g npm@latest
sudo npm install -g pyright
sudo npm install -g bash-language-server
sudo npm install -g dockerfile-language-server-nodejs
sudo npm install -g vscode-langservers-extracted
sudo npm install -g typescript typescript-language-server
sudo npm install -g stylelint-lsp
sudo yarn global add yaml-language-server
python3 -m pip install pynvim
go install golang.org/x/tools/gopls@latest
go install mvdan.cc/gofumpt@latest
go install golang.org/x/tools/cmd/goimports@latest
rustup component add rust-analyzer
cargo install silicon
ln -s $HOME/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/bin/rust-analyzer $CARGOPATH/bin
```

Other dependencies in [Plugins](#plugins)  

## Installation
from SnapStore (often old versions)
```commandline
sudo snap install --beta nvim --classic
```

or download `neovim.appimage` from github (fresh version compared to snap)

```commandline
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage

# Availability from anywhere
sudo ln -s ${PWD}/nvim.appimage /usr/bin/nvim
```

### Path (deprecated)
```commandline
~/.config/nvim/init.vim
```
### Path for Lua
```commandline
~/.config/nvim/
```

### Plugins

#### Marksman
For Marksman installation visit [this rep](https://github.com/artempyanykh/marksman)

#### Lua LSP
For Lua LSP installation visit [this rep](https://github.com/LuaLS/lua-language-server) \
Download archive and create link \
`sudo ln -s ${PWD}/lua-language-server.../bin/lua-language-server /usr/bin/lua-language-server`

#### Markdown Preview
If you have a problem with markdown-preview.nvim:

1. Go to `.local/share/nvim/site/pack/packer/start/markdown-preview.nvim`
2. Run `yarn install`
3. Run `yarn build`
4. If you have an errror check `:mess` in nvim, or add this on second step: `export NODE_OPTIONS=--openssl-legacy-provider`

#### Installation

[Packer](https://github.com/wbthomason/packer.nvim)

Inside NVim
```commandline
:PackerSync
```

or
```commandline
nvim +PackerSync
```

#### Warning! (Don't need on 0.9.0)

Need to reset plugin for **nvim-tree** to *e14989c* While having bug with opening

