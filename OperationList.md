# Git

* **Git Auto Completion**
  1. Install auto-completion
    ````
    brew install auto-completion
    ````
  2. Add the following command into the ~/.bash_profile
    ````
    if [ -f $(brew --prefix)/etc/bash_completion ]; then
       . $(brew --prefix)/etc/bash_completion
    fi
    ````

* **Git Branch Show In The Terminal**
  Add the following command into the ~/.bash_profile
  ````
  parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
  }
  export PS1="\u@\h \[\033[32m\]\W\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
  ````

* **[Optional] Change Git Default Editor**
  git config --global core.editor "code --wait" (cmd + shift + p in the vscode and install code in $PATH)

# Bash

* **Install shellcheck**
  brew install shellcheck