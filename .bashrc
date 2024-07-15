[[ $- != *i* ]] && return # If not running interactively, don't do anything

shopt -s autocd # Allow you to cd into directory merely by typing the directory name.

alias ls='ls -hNA --color=auto --group-directories-first'
alias ll='ls -lhNA --color=auto --group-directories-first'
alias rm='rm -i'
alias grep='grep --color=auto'
alias ws='cd /mnt/data/Documents/Workspace'
alias ms='cd /mnt/data/Music'

alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
alias glog='git log --graph --oneline --decorate'
alias ytdl='yt-dlp -o "%(title)s.%(ext)s"'
alias nl='redshift -PO 3000'
alias cl='pacman -Qdtq | sudo pacman -Rns -; yay -Sc; rm -rf ~/.bash_history*'

alias sd='shutdown now'
alias re='reboot'

alias weather='curl wttr.in'

PS1='\[\e[96;1m\]\u\[\e[92m\]@\[\e[93m\]\h\[\e[0m\] \[\e[37;1m\]\W\[\e[0m\] \[\e[1m\]\\$\[\e[0m\] '

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
