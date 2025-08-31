#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

eval -- "$(/usr/bin/starship init bash --print-full-init)"

# Enable Java tools
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# Enable Node tools
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Enable .NET tools
export PATH="$HOME/.aspire/bin:$PATH"
export PATH="$PATH:/home/wmeints/.dotnet/tools"

# Enable Go tools
export PATH="$PATH:$(go env GOBIN):$(go env GOPATH)/bin"
. "$HOME/.cargo/env"

