#!/bin/bash
#Version 1 

	apt-get -y update

	apt-get -y upgrade

	apt-get install software-properties-common

	apt-get install wget

	apt-get install curl

echo "Ferramentas para o modo texto:"

	apt-get install guake -y

	apt-get install tmux -y

echo "Instalando Sublime Text:"

	wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -

	echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

	apt-get update

	apt-get install sublime-text

echo "Limpando:"

	apt-get clean

	apt-get autoremove

	apt-get autoclean 

	apt-get install -f
