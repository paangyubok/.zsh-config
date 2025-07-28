# Quick Start
```bash
# install zinit
bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"

## add following commands to ~/.zshrc

# Load powerlevel10k theme (optional)
zinit ice depth"1" # git clone depth
zinit light romkatv/powerlevel10k

# Import zsh related config
source ~/.zsh-config/zinit-plugins.zsh
source ~/.zsh-config/variables.zsh
source ~/.zsh-config/alias.zsh
```