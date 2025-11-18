[[ $- != *i* ]] && return # If not running interactively, don't do anything

shopt -s autocd # Allow you to cd into directory merely by typing the directory name.
set -o vi       # vi mode

# Aliases
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

# . ~/.local/bin/git/git-completion.bash
# . ~/.local/bin/git/git-prompt.sh
# export GIT_PS1_SHOWDIRTYSTATE=1
# export GIT_PS1_SHOWSTASHSTATE=1
# PROMPT_COMMAND='PS1_CMD1=$(__git_ps1 " (%s)")'
# PS1='\[\e[96;1m\]\w\[\e[93m\]${PS1_CMD1}\[\e[0m\] '

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"

# Activate mise
eval "$(mise activate bash)"

# pnpm
export PNPM_HOME="/home/qh/.local/share/pnpm"
case ":$PATH:" in
*":$PNPM_HOME:"*) ;;
*) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

eval "$(starship init bash)"
