#!/bin/bash

# ======================================================================
# name: development.sh
# desc: install development software via APT           
# ======================================================================

echo -e "\n"
echo -e "==============================================================="
echo -e "**** Development ****"
echo -e "==============================================================="
echo -e "\n"

# ====================================================================== 
#
# build-essential:   	build tools(gcc, make, libc-dev)
# pkg-config:		 	compile and linker helper
#
# default-jdk:       	java development kit/libraries
# javacc:            	java compiler
#
# geany:             	raw code editor
#
# i386 architecture:	32bit dependencies for Android Studio
#
# libjansson-dev:    	C JSON library
# libjson-c-dev      	C JSON library
#
# libgmp-dev:        	C BigInt/Prime library
# libssl-dev:        	C SSL/TLS library
#
# libxml2-dev:       	C XML libary
# libexpat1-dev:     	C XML library
#
# libgtk:            	GTK 3/4 runtime and development libraries
#
# linux-headers:     	kernel headers
#
# mcrypt:				encrypt/decrypt tool (cmd)
#    
# php:                  php and modules   
# 
# ======================================================================

packages=(
		
		"build-essential pkg-config"
		"default-jdk javacc"
		"geany geany-plugins"
		"libc6:i386 libncurses6:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386" 
		"libjansson-dev libjson-c-dev" 
		"libgmp-dev libssl-dev"
		"libxml2-dev libexpat1-dev" 
		"libgtk-3-0 libgtk-3-dev libgtk-4-1 libgtk-4-dev" 
		"linux-headers-$(uname -r)" 
		"mcrypt" 
		"php php-crypt-gpg php-curl php-date php-decimal php-fpdf php-fpm php-gd php-gmp php-gnupg php-image-text php-imagick php-json php-ldap php-mail php-mailparse php-mbstring php-mcrypt php-phpseclib php-tcpdf php-text-captcha php-xml php-zip php-bacon-qr-code php-bcmath php-bz2 php-cgi php-intl php-dom php-mysql php-brick-math php-pear php-net-socket php-ssh2" 
)

echo -e "Adding i386 architecture...\n"
dpkg --add-architecture i386

echo -e "Updating packages list >\n"
apt-get update
echo -e "\n"

echo -e "Installing software >\n"
apt install -y -q ${packages[*]} 
