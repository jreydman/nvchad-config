### uninstalling nvchad
```bash
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
```

### installing nvchad
```bash
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
```

# nvchad-config
```bash
rm -rf ~/.config/nvim/*
git clone https://github.com/jreydman/nvchad-config.git ~/.config/nvim
```

### update dependencies
> :TSUpdate

### GPT support
> export OPENAI_API_TYPE=<value>

### Export mapping
```vim
:redir > key_mappings.txt
:map
:redir END
```
