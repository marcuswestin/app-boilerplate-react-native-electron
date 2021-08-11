#!/bin/bash # Boilerplate: go to root, include boilerplate script & return to script dir
WD=`pwd` && cd "$(git rev-parse --show-toplevel)" && . scripts/setup/boilerplate.zsh

show_commands

# install_if_not_exists 'brew' '/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"'
# install_if_not_exists 'node' 'brew install --verbose node'
# install_if_not_exists 'yarn' 'brew install --verbose yarn'
# install_if_not_exists 'pod' 'brew install cocoapods'
# install_if_not_exists 'ios-deploy' 'brew install ios-deploy'

cd ${ROOT}

git submodule update --init --recursive
git submodule update --recursive

cd ${ROOT}/apps/electron-wordflower && yarn --dev
cd ${ROOT}/apps/mobile-Wordflower && yarn --dev && yarn pod
