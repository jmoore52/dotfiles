#source /etc/profile

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

# change directory without "cd" command
setopt auto_cd

alias -s c=vim
alias -s h=vim

uname=`uname`
if [ $uname = "Linux" ];
then
  alias ls='ls --color=auto'
elif [ $uname = "Darwin" ];
then
  alias ls='ls -G'
fi

alias l='ls'
alias ll='ls -l'
alias la='ls -a'

alias p='pwd'

alias v='vim'

# tmux
alias t='tmux'
alias ta='tmux attach'
alias tl='tmux ls'

# git
alias g='git'
alias ga='git add'
alias gd='git diff'
alias gc='git commit -a -m'
alias gs='git status | less'
alias gl='git log'
alias gpush='git push'
alias gpull='git pull'

alias refresh='source ~/.zshrc'
