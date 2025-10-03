# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Configure essentials
# ==============================================================================
export PATH="~/.cargo/bin:$PATH"

eval "$(zoxide init bash)"

alias ls='eza -G --icons=auto'
alias cd='z'

# Allow me to correct my commands that I frequently mistype
# ============================================================================== 
eval $(thefuck --alias)
eval $(thefuck --alias crap)

# Custom prompt that is pretty :-)
# ============================================================================== 
eval -- "$(starship init bash)"

# Enable Java tools
# ============================================================================== 
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && \
source "$HOME/.sdkman/bin/sdkman-init.sh"

# Enable Node tools
# ============================================================================== 
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

export PNPM_HOME="/home/wmeints/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# Enable .NET tools
# ==============================================================================
export PATH="$HOME/.aspire/bin:$PATH"
export PATH="$PATH:/home/wmeints/.dotnet/tools"

# Enable Go tools
# ============================================================================== 
export PATH="$PATH:$(go env GOBIN):$(go env GOPATH)/bin"
. "$HOME/.cargo/env"

# Configure Docker for Quarkus
# ==============================================================================
export PODMAN_COMPOSE_WARNING_LOGS=false
export DOCKER_HOST=unix:///run/user/${UID}/podman/podman.socket
export TESTCONTAINERS_RYUK_DISABLED=true

