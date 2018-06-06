#! /bin/bash
## Set Path
export PATH=$PATH


## Setting Git
### Git auto complete
if [ -f "$(brew --prefix)"/etc/bash_completion ]; then
# shellcheck disable=SC1090
  . "$(brew --prefix)"/etc/bash_completion
fi

### Git branch name in terminal
parse_git_branch() {
   git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
PS1="\u@\h \[\033[32m\]\W\[\033[33m\]\$(parse_git_branch)\[\033[00m\]$ "
export PS1

### nvm configuration
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# alias setting
alias ls='ls -G'
alias gtw='cd ~/Documents/workspace'
