# Nvchad-config

### [***Over package requirement list***](docs/packages-requirement.md)

### Recomended requirements
 * [ripgrep](https://github.com/BurntSushi/ripgrep) => alias grep=rg
 * [exa](https://github.com/ogham/exa) => alias ls=exa
 * [tldr](https://github.com/tldr-pages/tldr) => alias man=tldr
 * [bat](https://github.com/sharkdp/bat) => alias cat=bat

---

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

### Codeium
> :Codeium Auth

### GPT support
#### ~~environment sync~~
> export OPENAI_API_TYPE=_TOKEN_

#### *pass sync* (recomended*)
[***Read pass integration***](docs/pass-integration.md)

---

### Additional meta

Export mapping
```vim
:redir > key_mappings.txt
:map
:redir END
```

Toogle plugins
```lua
-- custom/plugins.lua
{ "__current-plugin", enabled = false, -- true }
```

Manage plugins
```lua
-- custom/configs/overrides.lua
```
