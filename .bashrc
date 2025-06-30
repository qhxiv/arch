[[ $- != *i* ]] && return # If not running interactively, don't do anything

shopt -s autocd # Allow you to cd into directory merely by typing the directory name.
set -o vi       # vi mode

alias ls='ls -hNA --color=auto --group-directories-first'
alias ll='ls -lhNA --color=auto --group-directories-first'
alias rm='rm -i'
alias grep='grep --color=auto'

alias ws='cd /mnt/d/Documents/Workspace'
alias ms='cd /mnt/d/Music'
alias sc='cd "/mnt/d/Documents/School/Năm 4 Kì 2/"'

alias nc='cd ~/.config/nvim/; nvim .'
alias compe='cd /mnt/d/Documents/Workspace/cp/neovim; nvim a.cpp'

alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
alias glog='git log --graph --oneline --decorate'
alias lzd=lazydocker

# Youtube video download
alias ytdl='yt-dlp -o "%(title)s.%(ext)s" -f mp4'

# Youtube music download
alias ytmsdl='yt-dlp -o "%(title)s.%(ext)s" -x --audio-format mp3'

# Soundcloud download
alias scdl='yt-dlp -o "%(title)s.%(ext)s" -f mp3'

. ~/.local/bin/git/git-completion.bash
. ~/.local/bin/git/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
PROMPT_COMMAND='PS1_CMD1=$(__git_ps1 " (%s)")'
PS1='\[\e[96;1m\]\w\[\e[93m\]${PS1_CMD1}\[\e[0m\] '

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
