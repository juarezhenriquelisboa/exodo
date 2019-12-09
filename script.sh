#!/bin/bash
#Version 1 

	apt-get -y update

	apt-get -y upgrade

	apt-get install software-properties-common

	apt-get install wget

	apt-get install curl

echo "Instalando browsers"

apt-get install chromium

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

apt install ./google-chrome-stable_current_amd64.deb

rm -rf google-chrome-stable_current_amd64.deb

echo "Instalando pilha de Desenvolvimento Python:"

	apt install python3-pip
	
	pip3 install --upgrade pip

	pip3 install jupyter

	pip3 install virtualenv	

echo "Ferramentas para o modo texto:"

	apt-get install guake -y

	apt-get install tmux -y


echo "Instalando Visual Studio Code"

	curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg

	install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/

	sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

	apt-get install apt-transport-https

	apt-get update

	apt-get install code

echo "Limpando:"

	apt-get clean

	apt-get autoremove

	apt-get autoclean 

	apt-get install -f
