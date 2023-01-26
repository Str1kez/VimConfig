# VimConfig
## Requirements
`npm`, `ripgrep`, `fd`, `tree-sitter`
```commmandline
sudo npm install -g npm@latest
sudo npm install -g pyright
python3 -m pip install pynvim
go install golang.org/x/tools/gopls@latest
rustup component add rust-analyzer
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

Inside NVim
```commandline
:PackerSync
```

or
```commandline
nvim +PackerSync
```
