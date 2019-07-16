#!/bin/sh

echo "Welcome to Chase's Computer!"

cd $HOME

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install homebrew bundle to execute the Brewfile
brew tap homebrew/bundle
brew bundle --file=${HOME}/.dotfiles/Brewfile

# Link vimrc and install vim plugins
ln -s ${HOME}/.dotfiles/.vimrc ${HOME}/.vimrc
vim +PlugInstall

# Install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install Spacehip Theme
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"

ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
