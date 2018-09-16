#! /bin/bash

## Initilise the node project
(cd ./scripts/node && npm i);

## Copy the bash_profile
cp .bash_profile ~/.bash_profile;
source ~/.bash_profile;