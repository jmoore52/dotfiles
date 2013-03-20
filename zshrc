if [ -f ~/.hosts ];
then
  source ~/.hosts
fi

alias l='ls'
alias ll='ls -l'
alias la='ls -a'

alias v='vim'

# tmux
alias t='tmux'
alias ta='tmux attach'
alias tl='tmux ls'

# git
alias g='git'
alias ga='git add'
alias gc='git commit -a -m'
alias gs='git status'
alias gl='git log'
alias gpush='git push'
alias gpull='git pull'

alias refresh='source ~/.zshrc'
