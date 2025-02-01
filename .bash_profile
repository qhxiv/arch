[[ -f ~/.bashrc ]] && . ~/.bashrc

# Environment variables
export VISUAL=nvim
export EDITOR="$VISUAL"
export TERMINAL=alacritty

# Add all directories in `~/.local/bin` to $PATH
export PATH="$PATH:$(find ~/.local/bin -type d | paste -sd ':' -)"

if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
  exec startx
fi
