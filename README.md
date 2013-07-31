ubuntu-setup
============
cd $HOME
sudo apt-get install -y git-core
git clone https://github.com/titofranco/ubuntu-setup
./ubuntu-setup/setup.sh
git clone https://github.com/titofranco/.emacs.d
ln -sb dotfiles/.bash_profile .
ln -sb dotfiles/.bashrc .
mv .emacs.d .emacs.d~
ln -s dotfiles/.emacs.d .
