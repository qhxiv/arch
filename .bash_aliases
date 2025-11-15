alias ls='ls -hNA --color=auto --group-directories-first'
alias ll='ls -lhNA --color=auto --group-directories-first'
alias rm='rm -i'
alias grep='grep --color=auto'
alias fd='fd -H'

alias ws='cd /mnt/d/Documents/Workspace'
alias ms='cd /mnt/d/Music'
alias sc='cd /mnt/d/Documents/School/code-ptit-solutions/C++'
alias compe='cd /mnt/d/Documents/Workspace/cp'
alias book='zathura /mnt/d/Documents/Ebook/pdf/Discipline-Equals-Freedom-Field-Manual-JOCKO-WILLINK-Z-Library.pdf'

alias nc='cd ~/.config/nvim/; nvim .'

alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
alias glog='git log --graph --oneline --decorate'
alias lzd=lazydocker

# yt-dlp
alias ytdl='yt-dlp -o "%(title)s.%(ext)s" -f mp4'                  # Youtube video download
alias ytmsdl='yt-dlp -o "%(title)s.%(ext)s" -x --audio-format mp3' # Youtube music download
alias scdl='yt-dlp -o "%(title)s.%(ext)s" -f mp3'                  # Soundcloud download
