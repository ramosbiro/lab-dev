# --- Path Configuration ---
export PATH="$HOME/.local/bin:$HOME/bin:/usr/local/bin:$PATH"

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# --- Theme & Visuals ---
ZSH_THEME="robbyrussell"

# --- Plugins (Otimizados para Full Stack & DevOps) ---
# Adicionei 'zsh-autosuggestions' e 'zsh-syntax-highlighting' para produtividade
plugins=(
    git 
    docker 
    docker-compose 
    fzf 
    tmux 
    sudo 
    history-substring-search
    laravel
)

source $ZSH/oh-my-zsh.sh

# --- Senior Workflow Aliases ---

# General & Navigation
alias cls='clear'
alias ll='ls -lah --color=auto'
alias ..='cd ..'
alias ...='cd ../..'

# Docker Lab (Essencial para seu ambiente imutável)
alias dcu='docker compose up -d'
alias dcd='docker compose down'
alias dcl='docker compose logs -f'
alias dps='docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"'

# Laravel / VILT Stack (Seu core de desenvolvimento)
alias pa='php artisan'
alias fresh='php artisan migrate:fresh --seed'

# NixOS / System Management
alias nix-switch='sudo nixos-rebuild switch --flake .'
alias update-lab='sudo apt update && sudo apt upgrade -y'

# Git Aliases (Agilidade nos 6 monitores)
alias gst='git status'
alias gcm='git commit -m'
alias gp='git push'

# --- Tooling Integrations (Bat & FZF) ---
if command -v batcat >/dev/null 2>&1 && ! command -v bat >/dev/null 2>&1; then
	alias bat='batcat'
fi

export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'

# --- Environment Variables ---
export EDITOR='code'
export HISTSIZE=10000
export SAVEHIST=10000
setopt SHARE_HISTORY # Compartilha o histórico entre os 6 monitores instantaneamente

# Alias para editar este arquivo rapidamente
alias zshconfig="code ~/.zshrc"
