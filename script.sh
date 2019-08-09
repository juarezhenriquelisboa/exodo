#!/bin/bash
#Version 0 

	apt-get -y update

	apt-get -y upgrade

echo "Instalando pilha Mysql/Apache/PHP/PHPmyadmin:"

	apt-get install mysql-server apache2 libapache2-mod-php php php-mysql phpmyadmin

	echo -e '<?php phpinfo(); ?>' > /var/www/html/info.php

echo "Instalando pilha de Desenvolvimento JAVA:"

	add-apt-repository ppa:webupd8team/java
	
	apt-get update
	
	#apt-get install oracle-java9-installer
	#java9 já está desatualizado 

	wget http://download.netbeans.org/netbeans/8.2/final/zip/netbeans-8.2-201609300101.zip -O netbeans.zip

	unzip netbeans.zip -d /opt/

	mv /opt/netbeans*/ /opt/netbeans/

	ln -sf /opt/netbeans/bin/netbeans /usr/bin/netbeans

	echo -e '[Desktop Entry]\n Version=1.0\n Name=netbeans\n Exec=/opt/netbeans/bin/netbeans\n Icon=/opt/netbeans/nb/netbeans.png\n Type=Application\n Categories=Application' | sudo tee /usr/share/applications/netbeans.desktop

echo "Instalando pilha do Android Studio:"

	add-apt-repository ppa:ubuntu-desktop/ubuntu-make -y && apt-get update && apt-get install ubuntu-make -y

	umake android

	apt-get install android-tools-adb

echo "Instalando Telegram:"

	add-apt-repository ppa:atareao/telegram

	apt-get update

	apt-get install telegram

echo "Spotify:"

	sh -c "echo 'deb http://repository.spotify.com stable non-free' >> /etc/apt/sources.list.d/spotify.list"

	apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886

	apt-get update

	apt-get install spotify-client

echo "Instalando pilha de Desenvolvimento Python:"

	apt install python3-pip
	
	pip3 install --upgrade pip

	pip3 install jupyter

	add-apt-repository ppa:mystic-mirage/pycharm

	apt update

	apt install pycharm-community 

echo "Instalando Atom:"

	add-apt-repository ppa:webupd8team/atom -y 

	apt-get update -y

	apt-get install atom -y

echo "Ferramentas para o modo texto:"

	apt-get install guake -y

	apt-get install tmux -y

echo "Limpando:"

	apt-get clean

	apt-get autoremove

	apt-get autoclean 

	apt-get install -f
