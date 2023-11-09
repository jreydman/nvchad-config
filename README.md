# Nvchad-config

### Recomended requirements
 * [ripgrep](https://github.com/BurntSushi/ripgrep) => alias grep=rg
 * [exa](https://github.com/ogham/exa) => alias ls=exa
 * [tldr](https://github.com/tldr-pages/tldr) => alias man=tldr
 * [bat](https://github.com/sharkdp/bat) => alias cat=bat

## Installation steps

### Nvchad app
* Uninstalling
    ```bash
    rm -rf ~/.config/nvim
    rm -rf ~/.local/share/nvim
    ```

* Installing
    ```bash
    git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
    ```

### Custom config
* Installation
    ```bash
    rm -rf ~/.config/nvim/lua/custom
    git clone https://github.com/jreydman/nvchad-config.git ~/.config/nvim/lua/custom
    ```
* Update dependencies
    > :MasonUpdate
    > :TSUpdate

### GPT support
#### environment
! DEPRECATED
> export OPENAI_API_TYPE=_TOKEN_

#### passhrise auth
 * requirements:
    * [gpg util](https://gnupg.org)
    * [pass util](https://www.passwordstore.org)
    * [ripgrep](#recomended-requirements)

initialize
```bash
# create new gpg pairs kit
gpg --full-generate-key

# for checking sum
gpg --list-secret-keys --keyid-format=long

# create new password sync storage
pass init $(gpg --list-secret-keys --keyid-format=long | rg -o -e 'uid\s+[^\n]+' | rg -o -e '<([^>]+)>' --replace '$1')

# save generated GPT token in storage
echo <openai-api-key> | pass insert --echo --force api/tokens/openai
```

---

### Additional meta

Export mapping
```vim
:redir > key_mappings.txt
:map
:redir END
```
