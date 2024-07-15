[[ -f ~/.bashrc ]] && . ~/.bashrc

# Environment variables
export VISUAL=nvim
export EDITOR="$VISUAL"

# Add all directories in `~/.local/bin` to $PATH
export PATH="$PATH:$(find ~/.local/bin -type d | paste -sd ':' -)"

startx
