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

echo "Limpando:"

	apt-get clean

	apt-get autoremove

	apt-get autoclean 

	apt-get install -f
