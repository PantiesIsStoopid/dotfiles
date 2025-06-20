# History
HISTFILE=~/.config/zsh/.histfile
HISTSIZE=5000
SAVEHIST=100000

# Options
setopt autocd extendedglob
unsetopt beep
bindkey -v

# Path for custom binaries (adjust if needed)
export PATH=$PATH:/usr/bin

# Catppuccin Mocha colors
local USER='%F{204}'     # Peach
local AT='%F{166}'       # Maroon
local HOST='%F{175}'     # Mauve
local PATHCOLOR='%F{141}'# Rose
local DOLLAR='%F{244}'   # Grey

# Prompt
PROMPT="${USER}%n${AT}@${HOST}%m${DOLLAR}:${PATHCOLOR}%~${DOLLAR} $ %f"
RPROMPT='%F{244}$(date +%H:%M)%f'

# Oh My Posh (replace path if different)
if command -v oh-my-posh >/dev/null 2>&1; then
  eval "$(/usr/bin/oh-my-posh init zsh --config 'https://raw.githubusercontent.com/PantiesIsStoopid/PowerShell/main/Catppuccin.omp.json')"
fi

# zoxide (faster cd)
if command -v zoxide >/dev/null 2>&1; then
  eval "$(zoxide init zsh --no-aliases)"
fi

# fzf (fuzzy finder)
if [ -f ~/.fzf.zsh ]; then
  source ~/.fzf.zsh
fi

# Git prompt and completion (if installed)
if command -v git >/dev/null 2>&1; then
  source /usr/share/git/git-prompt.sh 2>/dev/null || true
  source /usr/share/git/completion/git-completion.zsh 2>/dev/null || true
fi

# Zsh Autosuggestions (install from https://github.com/zsh-users/zsh-autosuggestions)
if [ -f ~/.zsh/zsh-autosuggestions.zsh ]; then
  source ~/.zsh/zsh-autosuggestions.zsh
fi

# Zsh Syntax Highlighting (install from https://github.com/zsh-users/zsh-syntax-highlighting)
if [ -f ~/.zsh/zsh-syntax-highlighting.zsh ]; then
  source ~/.zsh/zsh-syntax-highlighting.zsh
fi

# Aliases
alias ll='ls -alF'
