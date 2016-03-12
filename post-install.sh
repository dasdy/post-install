#/bin/bash
sudo apt-get update; sudo apt-get upgrade;
sudo add-apt-repository ppa:numix/ppa;
sudo add-apt-repository ppa:ubuntu-elisp/ppa;
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_15.10/ /' >> /etc/apt/sources.list.d/arc-theme.list"
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb http://download.mono-project.com/repo/debian wheezy main" | sudo tee /etc/apt/sources.list.d/mono-xamarin.list
echo "deb http://download.mono-project.com/repo/debian wheezy-apache24-compat main" | sudo tee -a /etc/apt/sources.list.d/mono-xamarin.list
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo add-apt-repository ppa:webupd8team/atom
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update;
sudo apt-get gitk tree monodevelop-database monodevelop-versioncontrol monodevelop-nunit keepassx mono-devel monodevelop xfonts-terminus console-terminus install oracle-java8-installer qbittorrent wine sbcl nodejs numix-icon-theme-circle skype python-pip python3-pip dropbox shutter rhytmbox netbeans npm sublime-text-installer atom numix-gtk-theme terminator emacs-snapshot mono-complete git arc-theme ghc cabal-install ruby-full gcc g++ autoconf automake pkg-config libgtk3-dev build-essential;
sudo gem install git-up;
git clone https://github.com/erikdubois/themes-icons-pack.git
sudo ./themes-icons-pack/installation_deb.sh
#git clone https://github.com/dasdy/.emacs.d.git;
