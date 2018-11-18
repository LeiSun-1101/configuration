#! /bin/bash

RED="\033[0;31m"
GREEN="\033[0;32m"
NC="\033[0m"

Initilize .bash_profile
cp .bash_profile ~/.bash_profile;

### Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
### Install nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

source ~/.bash_profile

brew install git
brew tap caskroom/cask
brew install wget
brew install shellcheck
brew install maven
brew install bash-completion
nvm install --lts

brew cask install appcleaner
brew cask install mplayerx

if [[ "$1" != "--skip-download"  ]] 
then
    wget http://download.springsource.com/release/STS4/4.0.1.RELEASE/dist/e4.9/spring-tool-suite-4-4.0.1.RELEASE-e4.9.0-macosx.cocoa.x86_64.dmg -P ~/Downloads
    wget https://az764295.vo.msecnd.net/stable/bc24f98b5f70467bc689abf41cc5550ca637088e/VSCode-darwin-stable.zip -P ~/Downloads
    wget https://iterm2.com/downloads/stable/iTerm2-3_2_5.zip -P ~/Downloads
    wget https://download.docker.com/mac/stable/Docker.dmg -P ~/Downloads
fi
source ~/.bash_profile;