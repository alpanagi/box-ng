# global
alias iaf="tree -iaf --noreport"
alias exit='zuf ~/.bash_history && > ~/.bash_history && history -c && exit'

# linux
# alias zuf='shred -zuf'
# alias ls="ls -F --color --group-directories-first"
# alias lsa="ls -a -F --color --group-directories-first"
# alias mv="mv -vn"
# alias rm="rm -v"

# osx with brew coreutils
alias ls="gls -F --color --group-directories-first"
alias lsa="gls -a -F --color --group-directories-first"
alias mv="gmv -vn"
alias rm="grm -v"
alias zuf="gshred -zuf"

alias gitc="git checkout"
alias gitl="git log --pretty=oneline"
alias gitp="git pull"
alias gits="git status"
