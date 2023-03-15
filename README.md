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
rustup component add rust-analyzer
cargo install silicon
ln -s $HOME/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/bin/rust-analyzer $CARGOPATH/bin
```

## Installation
```commandline
sudo snap install --beta nvim --classic
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
[Packer](https://github.com/wbthomason/packer.nvim)

#### Warning!

Need to reset plugin for **nvim-tree** to *e14989c* While having bug with opening

For Marksman installation visit [this rep](https://github.com/artempyanykh/marksman)

If you have a problem with markdown-preview.nvim:

1. Go to `.local/share/nvim/site/pack/packer/start/markdown-preview.nvim`
2. Run `yarn install`
3. Run `yarn build`
4. If you have an errror check `:mess` in nvim, or add this on second step: `export NODE_OPTIONS=--openssl-legacy-provider`

Inside NVim
```commandline
:PackerSync
```

or
```commandline
nvim +PackerSync
```
