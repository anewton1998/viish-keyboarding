#!/usr/bin/fish
# assumes Git is installed already

fish_vi_key_bindings
curl -L https://get.oh-my.fish | fish
sudo apt-get -y install fonts-powerline
omf install bobthefish
chsh -s /usr/bin/fish
