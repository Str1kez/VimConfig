# VimConfig
## Requirements
`npm`, `ripgrep`, `fd`, `tree-sitter`
```commmandline
sudo npm install -g npm@latest
sudo npm install -g pyright
sudo npm install -g bash-language-server
sudo npm install -g dockerfile-language-server-nodejs
sudo yarn global add yaml-language-server
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

<u>Warning!</u>

Need to reset plugin for **nvim-tree** to *e14989c*

While having bug with opening

Inside NVim
```commandline
:PackerSync
```

or
```commandline
nvim +PackerSync
```
