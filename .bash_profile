[[ -f ~/.bashrc ]] && . ~/.bashrc

# Environment variables
export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
export XMODIFIERS=@im=ibus

export VISUAL=nvim
export EDITOR="$VISUAL"
export TERMINAL=alacritty

# Add all directories in `~/.local/bin` to $PATH
export PATH="$PATH:$(find ~/.local/bin -type d | paste -sd ':' -)"

# Load pyenv automatically by appending
# the following to
# ~/.bash_profile if it exists, otherwise ~/.profile (for login shells)
# and ~/.bashrc (for interactive shells) :

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - bash)"

if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
  printf "Select wm\n"
  printf "1) dwm (default)\n"
  printf "2) i3\n"
  read -p "(Enter anything for the default) " choice

  startx ~/.xinitrc $choice
fi
