#!/bin/bash
DIR=$('pwd')

# PPAs
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0DF731E45CE24F27EEEB1450EFDC8610341D9410
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo add-apt-repository ppa:webupd8team/java -y
sudo add-apt-repository ppa:nilarimogard/webupd8 -y
sudo add-apt-repository ppa:zeal-developers/ppa -y
# PPAs

sudo apt-get update && sudo apt-get upgrade -y

# Spotify
sudo apt-get install spotify-client -y
# Spotify

# Oracle java
sudo apt-get install oracle-java8-installer oracle-java8-set-default -y
# Oracle java

# Albert
sudo apt-get install albert -y
# Albert

# Zeal Docs
sudo apt-get install zeal
# Zeal Docs

sudo apt-get install synaptic apt-xapian-index gdebi gksu python-gpgme -y
sudo apt-get install ttf-freefont ttf-mscorefonts-installer \
    ttf-bitstream-vera ttf-dejavu ttf-liberation -y
sudo apt-get install flashplugin-nonfree icedtea-plugin file-roller evince -y
sudo apt-get install vlc bleachbit shotwell gparted gnome-disk-utility -y
sudo apt-get install libreoffice-writer libreoffice-calc libreoffice-impress -y
sudo apt-get install deluge unace unrar zip unzip p7zip-full p7zip-rar -y
sudo apt-get install sharutils rar libavcodec-extra libgtk-3-dev -y
sudo apt-get install vim-nox bash-completion zsh tmux irssi fonts-hack-ttf -y
sudo apt-get install nmap iptraf tcpdump iftop preload python-pip -y
sudo apt-get install tlp tlp-rdw tp-smapi-dkms acpi-call-dkms smartmontools -y
sudo apt-get install ethtool pspp dia wget zram-config calibre steam silversearcher-ag -y
sudo apt-get install build-essential golang git-core gitg geany powerline git-flow -y
sudo pip install -U pip

# install aws eb cli
pip install --upgrade --user awsebcli

sudo tlp start

### Instalando oh-my-zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

ln -s -f ~/.dotfiles/gitconfig ~/.gitconfig
ln -s -f ~/.dotfiles/zshrc ~/.zshrc
ln -s -f ~/.dotfiles/tmux.conf ~/.tmux.conf
ln -s -f ~/.dotfiles/alias.zsh ~/.oh-my-zsh/lib/alias.zsh

### instalando mysql ###
sudo apt-get install mysql-server mysql-common libmysqlclient-dev mysql-client -y
sudo apt-get install mysql-workbench -y
sudo update-rc.d -f mysql remove

cd $DIR

### configurando vim
sudo apt-get install exuberant-ctags ncurses-term -y
git clone https://github.com/Sidoniuns/vimfiles.git ~/.vim
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
ln -s ~/.vim/vimrc ~/.vimrc
sudo cp -r /home/marcelo/.vim /root/
sudo ln -s /root/.vim/vimrc /root/.vimrc

### instalando ruby on rails
sudo apt-get install curl nodejs -y
gpg --keyserver hkp://keys.gnupg.net --recv-keys \
    409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable --auto-dotfiles
source ~/.zshrc
rvm requirements
sudo apt-get install libyaml-dev -y
rvm install 2.4.2 --with-openssl-dir=$HOME/.rvm/usr
rvm use 2.4.2 --default
gem install rails --version 5.1.4 --no-document
sudo apt-get install libxslt-dev libxml2-dev libsqlite3-dev -y
sudo apt-get install postgresql-9.5 -y
sudo apt-get install pgadmin3 libpq-dev -y
sudo update-rc.d -f postgresql remove

### instalando heroku
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
