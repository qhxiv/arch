source ~/.local/bin/git-prompt.sh

[[ $- != *i* ]] && return # If not running interactively, don't do anything

shopt -s autocd # Allow you to cd into directory merely by typing the directory name.

alias ls='ls -hNA --color=auto --group-directories-first'
alias ll='ls -lhNA --color=auto --group-directories-first'
alias rm='rm -i'
alias grep='grep --color=auto'

alias ws='cd /mnt/data/Documents/Workspace'
alias sc='cd /mnt/data/Documents/School/Năm\ 4\ Kì\ 1'
alias ms='cd /mnt/data/Music'

alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
alias glog='git log --graph --oneline --decorate'
alias ytdl='yt-dlp -o "%(title)s.%(ext)s"'

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"

PROMPT_COMMAND='PS1_CMD1=$(__git_ps1 " (%s)")'
PS1='\[\e[1m\]\W${PS1_CMD1}\[\e[0m\] '

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
