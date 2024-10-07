#!/bin/bash

curl -sS https://starship.rs/install.sh | sh 

clear

if [ $(echo $SHELL | grep "bash") ];
then
	if [[ ! $(cat ~/.bashrc | grep "(starship init bash)") ]];
	then
		echo "Adding initialization to your .bashrc file."
		echo 'eval "$(starship init bash)"' >> ~/.bashrc
	fi
elif [ $(echo $SHELL | grep "zsh") ];
then
	if [[ ! $(cat ~/.zshrc | grep "(starship init zsh)") ]];
	then
		echo "Adding initialization to your .zshrc file."
		echo 'eval "$(starship init zsh)"'
	fi
fi

cd "$(dirname "$0")"

mkdir -p ~/.config

cp ../configs/starship.toml ~/.config/

echo "Copied the starship config file."
