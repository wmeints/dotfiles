if [ -f /opt/homebrew/bin/brew ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

alias grep='grep --color=auto'

# Use some sane keybindings, because the defaults....
# ===============================================================================
bindkey "^[[1;5C" forward-word        # Ctrl + Right
bindkey "^[[1;5D" backward-word       # Ctrl + Left
bindkey "\e[3~"   delete-char         # Delete
bindkey  "^[[H"   beginning-of-line   # Home
bindkey  "^[[F"   end-of-line         # End

# Shell utilities
# ===============================================================================
eval "$(zoxide init zsh)"

alias ls='eza -alf --color=always --sort=size | grep -v /'

# Create a widget function for lazygit
lazygit-widget() {
  lazygit
  zle reset-prompt
}

# Register the function as a zle widget
zle -N lazygit-widget

# Bind space+gg to the widget
bindkey ' gg' lazygit-widget

# Allow me to correct my commands that I frequently mistype
# =============================================================================== 
eval $(thefuck --alias)
eval $(thefuck --alias crap)

# Custom prompt that is pretty :-)
# =============================================================================== 
eval -- "$(starship init zsh --print-full-init)"

# Enable Java tools
# =============================================================================== 
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# Enable Node tools
# =============================================================================== 
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PNPM_HOME="/home/wmeints/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# Enable .NET tools
# =============================================================================== 
export PATH="$HOME/.aspire/bin:$PATH"
export PATH="$PATH:/home/wmeints/.dotnet/tools"

# Enable Go tools
# =============================================================================== 
export PATH="$PATH:$(go env GOBIN):$(go env GOPATH)/bin"
. "$HOME/.cargo/env"

# Enable Ruby Version Manager
# ===============================================================================
if [ -f /etc/profile.d/rvm.sh ]; then
  source /etc/profile.d/rvm.sh
fi

