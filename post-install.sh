#/bin/bash

sudo add-apt-repository ppa:numix/ppa
sudo add-apt-repository ppa:ubuntu-elisp/ppa
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo add-apt-repository ppa:webupd8team/atom
sudo add-apt-repository ppa:webupd8team/java
sudo add-apt-repository ppa:git-core/ppa

sudo apt update

sudo apt install -y \
     gitk \
     sqlite3 \
     postgresql-9.5 \
     pgadmin3 \
     meld \
     rlwrap  \
     tree \
     keepassx \
     mono-devel \
     monodevelop \
     xfonts-terminus \
     console-terminus \
     oracle-java8-installer \
     qbittorrent \
     sbcl \
     nodejs \
     numix-icon-theme-circle \
     skype \
     python-pip \
     python3-pip \
     shutter \
     npm \
     sublime-text-installer \
     atom \
     numix-gtk-theme \
     terminator \
     emacs \
     mono-complete \
     git \
     arc-theme \
     ghc \
     caffeine \
     gnome-tweak-tool \
     cabal-install \
     ruby-full \
     gcc \
     g++ \
     autoconf \
     automake \
     ubuntu-restricted-extras \
     libavcodec-extra \
     pkg-config \
     build-essential \
     fish \
     htop \
     i3  \
     i3blocks \
     rofi

sudo pip3 install git-up

mkdir ~/bin

wget -O ~/bin/lein https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein

chmod +x ~/bin/lein

mkdir ~/.lein
ln -s `pwd`/profiles.clj ~/.lein/profiles.clj

mkdir -p ~/.config/fish/functions
ln -s `pwd`/fish_prompt.fish ~/.config/fish/functions/fish_prompt.fish

ln -s `pwd`/.i3 ~/.i3
ln -s `pwd`/.vimrc ~/.vimrc
ln -s `pwd`/.emacs.d ~/.emacs.d

git config --global push.default simple
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
