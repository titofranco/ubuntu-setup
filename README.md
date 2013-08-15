ubuntu-setup
============

```sh
cd $HOME
sudo apt-get install -y git-core
git clone https://github.com/titofranco/ubuntu-setup
./ubuntu-setup/setup.sh
mv .emacs.d .emacs.d~
git clone https://github.com/titofranco/.emacs.d
ln -sb ubuntu-setup/.bash_profile .
ln -sb ubuntu-setup/.bashrc .
```
