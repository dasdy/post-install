#!/bin/bash
function install-soft {
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew tap cjbassi/ytop
    brew tap derailed/k9s
    brew tap homebrew/cask
    brew tap homebrew/cask-fonts
    brew tap railwaycat/emacsmacport
    brew install automake \
               bash-completion \
               bat \
               tokei \
               cmake \
               coreutils \
               exa \
               fd \
               ffmpeg \
               fzf \
               git \
               graphviz \
               gtk+3 \
               helm \
               jdupes \
               jemalloc \
               jq \
               derailed/k9s/k9s \
               libscrypt \
               lightgbm \
               ncdu \
               neovim \
               node \
               pre-commit \
               ripgrep \
               shellcheck \
               sl \
               tag \
               tree \
               watch \
               wget \
               cjbassi/ytop/ytop \
               zsh \
               zsh-autosuggestions \
               zsh-syntax-highlighting \
               zstd
    brew cask install \
               emacs-mac \
               font-fira-code \
               font-hack \
               font-hack-nerd-font \
               font-input \
               font-source-code-pro \
               font-terminus-nerd-font \
               font-terminus-nerd-font-mono \
               iterm2 \
               jupyter-notebook-viewer \
               keepassxc \
               racket
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
