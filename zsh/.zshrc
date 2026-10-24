# If you come from bash you might have to change your $PATH.
export PATH="$HOME/.npm-global/bin:/home/sunerk/.cargo/bin:$HOME/.local/bin:$PATH"

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

export EDITOR=nvim
export VISUAL=nvim

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  sudo
)

source $ZSH/oh-my-zsh.sh

# Example aliases
alias ls='eza --icons --group-directories-first'
alias ll='eza -l --icons --group-directories-first --git'
alias la='eza -la --icons --group-directories-first --git'
alias lt='eza --tree --level=2 --icons'

alias lg='lazygit'
alias g='git'
alias ga='git add'
alias gaa='git add --all'
alias gc='git commit -m'
alias gp='git push'
alias gs='git status'

alias update='yay -Syu' 
alias ins='sudo pacman -S'
alias rmv='sudo pacman -Rs'
alias cleanup='sudo pacman -Sc'

alias cat='bat --style=plain --paging=never --theme="Catppuccin Macchiato"'
alias catp='bat --theme "Catppuccin Macchiato"'

# comodity
alias hypr='cd ~/.config/hypr/'

# Starship
eval "$(starship init zsh)"

# Other
alias vrr-fix="hyprctl eval 'hl.config({ misc = { vrr = 0 } })'; sleep 1; hyprctl eval 'hl.config({ misc = { vrr = 1 } })'"

## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /home/sunerk/.dart-cli-completion/zsh-config.zsh ]] && . /home/sunerk/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]


export PATH=$PATH:/home/sunerk/.spicetify

# pfetch bonito (preset compacto de fastfetch); el original sigue en `command pfetch`
alias pfetch="fastfetch -c mini"
