[[ -f ~/.bashrc ]] && . ~/.bashrc

# Environment variables
export VISUAL=nvim
export EDITOR="$VISUAL"
export TERMINAL=st
export BROWSER=brave
export PATH=$PATH:~/.cargo/bin
export PATH=$PATH:~/.scripts
for d in ~/.scripts/*/; do
	export PATH=$PATH:$d
done

startx
