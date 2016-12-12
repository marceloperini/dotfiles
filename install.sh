#!/bin/bash
DIR=$('pwd')

sudo apt-get update && sudo apt-get upgrade -y

### copia os repositórios
# sudo cp sources.list /etc/apt/
sudo cp -f ~/.dotfiles/sources.list.d/* /etc/apt/sources.list.d/

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0F164EEB
sudo apt-key adv --keyserver hkp://pool.sks-keyservers.net:80 --recv-keys CD4E8809
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys FC1B6133
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 685D1580
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 852541CB

wget http://download.opensuse.org/repositories/home:Horst3180/Debian_8.0/Release.key | sudo apt-key add Release.key

# Spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

### para rodar jogos na steam
sudo usermod -a -G video,audio $('whoami')
sudo dpkg --add-architecture i386

sudo apt-get update

sudo apt-get install synaptic apt-xapian-index gdebi gksu python-gpgme -y
sudo apt-get install firmware-linux intel-microcode -y
sudo apt-get install ttf-freefont ttf-mscorefonts-installer \
    ttf-bitstream-vera ttf-dejavu ttf-liberation -y
sudo apt-get install flashplugin-nonfree icedtea-plugin file-roller evince -y
sudo apt-get install vlc bleachbit shotwell gparted gnome-disk-utility -y
sudo apt-get install libreoffice-writer libreoffice-calc libreoffice-impress -y
sudo apt-get install oracle-java8-installer oracle-java8-set-default -y
sudo apt-get install deluge unace unrar zip unzip p7zip-full p7zip-rar -y
sudo apt-get install sharutils rar libavcodec-extra spotify-client libgtk-3-dev -y
sudo apt-get install gstreamer0.10-plugins-ugly gstreamer0.10-plugins-bad -y
sudo apt-get install gstreamer0.10-fluendo-mp3 gstreamer0.10-pulseaudio -y
sudo apt-get install libgstreamer-perl libgstreamer-interfaces-perl gtk2-engines-murrine -y
sudo apt-get install vim-nox bash-completion zsh tmux irssi mpd ncmpcpp -y
sudo apt-get install nmap iptraf tcpdump iftop preload alacarte python-pip -y
sudo apt-get install tlp tlp-rdw tp-smapi-dkms acpi-call-dkms smartmontools -y
sudo apt-get install ethtool pspp dia zeal wget calibre steam silversearcher-ag -y
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

sudo cp ~/.dotfiles/zram /etc/init.d/zram
sudo chmod +x /etc/init.d/zram
sudo insserv zram

### instalando mysql ###
sudo apt-get install mysql-server mysql-server-5.5 mysql-client-5.5 \
    mysql-common -y
sudo apt-get install libmysqlclient-dev mysql-workbench -y
sudo update-rc.d -f mysql remove

### arc theme for gnome
sudo apt-get install arc-theme -y
sudo apt-get install automake autoconf -y
cd ~/.dotfiles/arc-icon-theme
./autogen.sh --prefix=/usr
sudo make install

cd $DIR

### configurando vim
sudo apt-get install exuberant-ctags ncurses-term -y
pip install --user git+git://github.com/Lokaltog/powerline
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
rvm install 2.3.1 --with-openssl-dir=$HOME/.rvm/usr
rvm use 2.3.1 --default 
gem update --system 2.1.9
gem install rails --version 4.2.5.1 --no-document
sudo apt-get install libxslt-dev libxml2-dev libsqlite3-dev -y
sudo apt-get install postgresql-9.4 -y
sudo apt-get install pgadmin3 libpq-dev -y
sudo update-rc.d -f postgresql remove

### instalando heroku
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
