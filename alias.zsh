# cargo install eza
## $HOME/.local/share/cargo/bin/eza
if command -v eza 2>&1 >/dev/null; then
  alias l="eza --icons --long --header"
  alias ls="eza --icons"
  alias ll="eza --icons --long --header"
  alias la="eza --icons --long --header --all"
fi
alias usezsh="export SHELL=/bin/zsh && exec /bin/zsh -l"
