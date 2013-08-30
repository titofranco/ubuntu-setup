#!/bin/bash

cd $HOME
sudo apt-get install -y git-core

# Install nvm: node-version manager
# https://github.com/creationix/nvm
sudo apt-get install -y git gitk
sudo apt-get install -y curl
curl https://raw.github.com/creationix/nvm/master/install.sh | sh

# Load nvm and install latest production node
source ~/.nvm/nvm.sh
nvm install v0.10.12
nvm use v0.10.12

# Install jshint to allow checking of JS code within emacs
# http://jshint.com/
npm install -g jshint

# Install rlwrap to provide libreadline features with node
# See: http://nodejs.org/api/repl.html#repl_repl
sudo apt-get install -y rlwrap

# Install emacs24
# https://launchpad.net/~cassou/+archive/emacs
sudo apt-add-repository -y ppa:cassou/emacs
sudo apt-get -qq update
sudo apt-get install -y emacs24-nox emacs24-el emacs24-common-non-dfsg emacs-snapshot emacs-intl-fonts emacs-goodies-el

#RVM dependencies
sudo apt-get -y install gawk libgdbm-dev pkg-config libffi-dev build-essential openssl libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev automake libtool bison subversion python
sudo apt-get -y install libcurl3 libcurl3-gnutls libcurl4-openssl-dev

#Install RVM, Ruby and Rails
curl -L https://get.rvm.io | bash -s stable --rails
source ~/.rvm/scripts/rvm
#Ignore rvm warnings
rvm rvmrc warning ignore all.rvmrcs
sudo gem install bundler
#Needed for some gems
sudo apt-get -y install ruby1.9.1-dev

# Install Heroku toolbelt
# https://toolbelt.heroku.com/debian
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh

#Mysql server
sudo apt-get -y install mysql-server libmysqlclient-dev

#Postgresql
sudo apt-get -y install libpq-dev

#Mongodb
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/10gen.list
sudo apt-get update
sudo apt-get install mongodb-10gen

#Install java
sudo apt-get purge openjdk*
sudo rm /var/lib/dpkg/info/oracle-java7-installer*
sudo apt-get purge oracle-java7-installer*
sudo rm /etc/apt/sources.list.d/*java*
sudo apt-get update
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java7-installer -y
sudo apt-get install openjdk-7-jre-headless -y

#Imagemagick dependencies
sudo apt-get install -y imagemagick libmagickwand-dev

#Install ElasticSearch
wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.90.0.deb
sudo dpkg -i elasticsearch-0.90.0.deb
sudo service elasticsearch start

#Wine
sudo add-apt-repository ppa:ubuntu-wine/ppa
sudo apt-get build-dep wine1.5
apt-get --build source wine1.5
sudo dpkg -i wine*.deb
