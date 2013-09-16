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

# set env to include dotfiles dir
export PATH=${PATH}:~/dotfiles

# change directory without "cd" command
setopt auto_cd

alias -s c=vim
alias -s h=vim

export EDITOR=vim
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
alias gb='git branch'
alias gc='git commit -a -m'
alias gd='git diff'
alias gs='git status | less'
alias gl='git log'
alias gpush='git push'
alias gpull='git pull'

alias ctgen='ctags -R *'

alias refresh='source ~/.zshrc'

# zebralite specific
alias zl="cd ~/zebralite"
alias ctrl="cd ~/zebralite/controller"
alias os="cd ~/zebralite/ospf6-sibling"
alias bs="cd ~/zebralite/bgp-sibling"
alias pnt="cd ~/zebralite/punter"
alias lib="cd ~/zebralite/lib"
alias log0="cat /var/log/zebralite/ospf6_sibling_0.log"
alias log1="cat /var/log/zebralite/ospf6_sibling_1.log"
alias log2="cat /var/log/zebralite/ospf6_sibling_2.log"

PROMPT='%1~ %m%# '
