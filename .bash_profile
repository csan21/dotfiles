export PATH=~/bin:$PATH

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\n\[\e[1;31m\]\u \[\e[1;33m\]\W\[\e[0;34m\]\$(parse_git_branch)\[\e[1;32m\] ➜ \[\e[m\]"
export GREP_OPTIONS='--color=auto'
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad

export PYTHONDONTWRITEBYTECODE=1

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

alias pycharm="open -a /Applications/PyCharm*.app"
