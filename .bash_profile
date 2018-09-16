#! /bin/bash
## Setting Path
export PATH=/Users/leisun/Documents/workspace/github/configuration/scripts/bash:$PATH;

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
PS1="\\u@\\h \\[\\033[32m\\]\\W\\[\\033[33m\\]\$(parse_git_branch)\\[\\033[00m\\] $ "
export PS1

## Setting for NVM
export NVM_DIR="$HOME/.nvm";
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh";  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion";  # This loads nvm bash_completion

## Alias

### Alias for docker
alias docker-rm-all-containers='docker stop $(docker ps -aq) && docker rm $(docker ps -aq)';
alias docker-clean-volumn='docker volume rm $(docker volume ls -qf dangling=true)';

### Other alias
alias ls='ls -G';
alias toWorkspace='cd ~/Documents/workspace';


