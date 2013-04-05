if [ -f ~/.hosts ];
then
  source ~/.hosts
fi

# set term correctly
case "$TERM" in
  rxvt-unicode-256color)
    TERM=rxvt-unicode
    ;;
esac

alias l='ls'
alias ll='ls -l'
alias la='ls -a'

alias v='vim'

# tmux
alias ta='tmux attach'
alias tl='tmux ls'

alias refresh='source ~/.zshrc'
