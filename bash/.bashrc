# If not running interactively, don't do anything
[[ $- != *i* ]] && return
#
# Use gnome-keyring for SSH
if [ -n "$DESKTOP_SESSION" ]; then
    export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/gcr/ssh"
fi

# Configure essentials
# ==============================================================================
export PATH="~/.cargo/bin:$PATH"
export PATH="/usr/local/go/bin:$PATH"
export PATH="$HOME/.dotnet:$PATH"
export PATH="$HOME/.dotnet/tools:$PATH"

export DOTNET_ROOT="$HOME/.dotnet"

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

# Configure SDKMan
# ==============================================================================
source "$HOME/.sdkman/bin/sdkman-init.sh"

# Enable shell tools
# ==============================================================================
alias ls='eza -G --icons=auto'
alias cd='z'

eval "$(zoxide init bash)"

eval "$(direnv hook bash)"
export PATH=$HOME/.local/bin:$PATH

[[ "$TERM_PROGRAM" == "kiro" ]] && . "$(kiro --locate-shell-integration-path bash)"
