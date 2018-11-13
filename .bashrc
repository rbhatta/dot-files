# Start tmux
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux
fi

#Disable software control flow
stty -ixon

# Look for aliases
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

# Customize the prompt
export PS1="\[\e[96m\]\u\[\e[00m\]@\h:\[\e[1;33m\]\w\[\e[00m\]$ " 
