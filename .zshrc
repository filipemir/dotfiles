# ---------- ZSH Setup ---------- #

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export DEFAULT_USER=$USER

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Source oh-my-zsh and theme
source $ZSH/oh-my-zsh.sh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme

# Define zsh plugins
plugins=(history dirhistory zsh-autosuggestions)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

prompt_context(){}

# --------------------------------- #

export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

bindkey '[C' forward-word
bindkey '[D' backward-word 

eval "$(pyenv init -)"

# --------------------------------- #

alias dc="docker-compose"