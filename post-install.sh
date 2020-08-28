#!/bin/bash
function install-soft {
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew install automake \
         bash-completion \
         coreutils \
         git \
         graphviz \
         ncdu \
         neovim \
         pkg-config \
         python \
         sbcl \
         shellcheck \
         texinfo \
         tree \
         zsh-autosuggestions \
         zsh-syntax-highlighting
    brew cask install\
         emacs-mac \
         font-fira-code \
         font-hack-nerd-font \
         iterm2 \
         keepassxc
}

function add-configs {
  # config manipulations that probably only need to be done once
  mkdir ~/.lein
  ln -s "$(pwd)"/profiles.clj ~/.lein/profiles.clj

  mkdir -p ~/.config/fish/functions
  ln -s "$(pwd)"/fish_prompt.fish ~/.config/fish/functions/fish_prompt.fish

  ln -s "$(pwd)"/.vimrc ~/.vimrc

  mkdir -p ~/.config/nvim
  ln -s "$(pwd)"/.vimrc ~/.config/nvim/init.vim
  ln -s "$(pwd)"/.bashrc ~/.bash_profile
  ln -s "$(pwd)"/.emacs.d ~/.emacs.d
  ln -s "$(pwd)"/.atom ~/.atom

  git config --global push.default simple
  git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
}

install-soft
add-configs
