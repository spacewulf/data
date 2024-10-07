#!/bin/bash

curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh

if [ $(echo $SHELL | grep "bash") ];
then	
	if [[ ! $(cat ~/.bashrc | grep "(zoxide init bash)") ]];
	then
		echo "Adding initialization to your .bashrc file."
		echo 'eval "$(zoxide init bash)"' >> ~/.bashrc
	fi
	if [[ ! $(cat ~/.bashrc | grep "alias cd=z") ]];
	then
		echo "Adding cd -> z aliasing to your .zshrc file."
		echo 'alias cd=z' >> ~/.bashrc
	fi

elif [ $(echo $SHELL | grep "zsh") ];
then
	if [[ ! $(cat ~/.zshrc | grep "(zoxide init zsh)") ]];
	then
		echo "Adding initalization to your .zshrc file."
		echo 'eval "$(zoxide init zsh)"'
	fi

	if [[ ! $(cat ~/.zshrc | grep "alias cd=z") ]];
	then
		echo "Adding cd -> z aliasing to your .zshrc file."
		echo 'alias cd=z' >> ~/.zshrc
	fi
fi


