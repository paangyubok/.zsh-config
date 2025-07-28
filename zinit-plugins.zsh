#!/bin/zsh

# zinit load zdharma/history-search-multi-word

# 快速目录跳转
zinit ice lucid wait='1'
zinit light skywind3000/z.lua

autoload -Uz compinit; compinit
zinit light Aloxaf/fzf-tab
zinit light paulirish/git-open
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light zdharma/fast-syntax-highlighting
# zinit light zsh-users/zsh-syntax-highlighting

# 加载 OMZ 框架及部分插件
# zinit snippet OMZL::git.zsh
zinit snippet OMZ::lib/git.zsh
zinit snippet OMZ::lib/history.zsh
zinit snippet OMZ::lib/key-bindings.zsh
zinit snippet OMZ::lib/clipboard.zsh
zinit snippet OMZ::lib/completion.zsh
zinit snippet OMZ::lib/theme-and-appearance.zsh

zinit snippet OMZP::cp
# zinit snippet OMZP::brew
# zinit snippet OMZP::extract
# zinit snippet OMZP::vi-mode
# zinit snippet OMZP::sublime
zinit snippet OMZP::gitignore
zinit snippet OMZP::colored-man-pages

# zinit snippet OMZ::plugins/git/git.plugin.zsh
# zinit snippet OMZ::plugins/mvn/mvn.plugin.zsh
# zinit snippet OMZ::plugins/sudo/sudo.plugin.zsh
# zinit snippet OMZ::plugins/common-aliases/common-aliases.plugin.zsh
zinit snippet OMZ::plugins/colored-man-pages/colored-man-pages.plugin.zsh


#zinit ice svn
zinit snippet OMZ::plugins/extract

#zinit wait="1" lucid as="completion" for \
#  OMZ::plugins/docker/_docker \
#  OMZ::plugins/docker-compose/_docker-compose \
#  OMZ::plugins/gradle/_gradle \
#  OMZ::plugins/vagrant/_vagrant

# sharkdp/bat
zinit ice as"command" from"gh-r" mv"bat* -> bat" pick"bat/bat"
zinit light sharkdp/bat

zinit load 'zsh-users/zsh-history-substring-search'
zinit ice wait atload'_history_substring_search_config'
#bindkey '^[[A' history-substring-search-up
#bindkey '^[[B' history-substring-search-down
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down


# ---- (可选)加载了一堆二进制程序 ----
zinit as="null" wait="1" lucid from="gh-r" for \
    mv="*/rg -> rg"  sbin		BurntSushi/ripgrep \
    sbin="fzf"       junegunn/fzf-bin

# 加载它们的补全等
zinit ice mv="*.zsh -> _fzf" as="completion"
zinit snippet 'https://github.com/junegunn/fzf/blob/master/shell/completion.zsh'
zinit snippet 'https://github.com/junegunn/fzf/blob/master/shell/key-bindings.zsh'
# 以下安装方式有可能导致非本地用户显示为uid, 建议使用cargo安装
# zinit ice wait"0" lucid from"gh-r" as"program" \
#     bpick"*x86_64-unknown-linux-musl.tar.gz" \
#     extract"" \
#     mv"eza* -> eza"
# zinit light eza-community/eza
# ---- 加载完了 ----

