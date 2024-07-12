[[ $- != *i* ]] && return # If not running interactively, don't do anything

shopt -s autocd # Allow you to cd into directory merely by typing the directory name.

alias ls='ls -hNA --color=auto --group-directories-first'
alias ll='ls -lhNA --color=auto --group-directories-first'
alias rm='rm -i'
alias grep='grep --color=auto'
alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
alias ws='cd /mnt/data/Documents/Workspace'
alias ms='cd /mnt/data/Music'

alias glog='git log --graph --oneline --decorate'
alias ydl='yt-dlp -o "%(title)s.%(ext)s" --yes-playlist'
alias nl='redshift -PO 3000'
alias cl='pacman -Qdtq | sudo pacman -Rns -; yay -Sc; rm -rf ~/.bash_history*'

alias sd='shutdown now'
alias re='reboot'

alias weather='curl wttr.in'

PROMPT_COMMAND='PS1_CMD1=$(git branch --show-current 2>/dev/null)';
PS1='\[\e[1m\]\u \w ${PS1_CMD1}\[\e[0m\]> '

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
