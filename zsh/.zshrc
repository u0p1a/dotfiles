# 基础配置
DISABLE_AUTO_UPDATE="true"
DISABLE_MAGIC_FUNCTIONS=true
set -g default-terminal "tmux-256color"

# 即时启动
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# 插件配置
source "${HOME}/.zgenrc"

# 主题配置
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# 自定义功能
source "${HOME}/.shrc"

# 自动启动 tmux
# [ -z "$TMUX"  ] && (tmux attach || tmux new-session) 

# 自动启动zelli
# eval "$(zellij setup --generate-auto-start zsh)"
