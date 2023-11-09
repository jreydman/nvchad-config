#recomended requirements
 * [ripgrep](https://github.com/BurntSushi/ripgrep) => alias grep=rg
 * [exa](https://github.com/ogham/exa) => alias ls=exa
 * [tldr](https://github.com/tldr-pages/tldr) => alias man=tldr
 * [bat](https://github.com/sharkdp/bat) => alias cat=bat
### uninstalling nvchad
```bash
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
```

### installing nvchad
```bash
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
```

# nvchad-config
```bash
rm -rf ~/.config/nvim/lua/custom && git clone https://github.com/jreydman/nvchad-config.git ~/.config/nvim/lua/custom
```

### update dependencies
> :TSUpdate

### GPT support
environment
> export OPENAI_API_TYPE=_TOKEN_ //deprecated

passhrise auth
 * requirements:
    * [gpg util](https://gnupg.org)
    * [pass util](https://www.passwordstore.org)
    * [ripgrep](#ripgrep)
```bash
# for initial
gpg --full-generate-key
gpg --list-secret-keys --keyid-format=long
pass init $(gpg --list-secret-keys --keyid-format=long | rg -o -e 'uid\s+[^\n]+' | rg -o -e '<([^>]+)>' --replace '$1')
```
### Export mapping
```vim
:redir > key_mappings.txt
:map
:redir END
```
