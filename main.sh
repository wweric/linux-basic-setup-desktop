#!/bin/bash

# ======================================================================
# name: main.sh
# desc: basic setup via APT           
# ======================================================================

echo -e "\n"
echo -e "==============================================================="
echo -e " Starting Basic Setup via APT"
echo -e "==============================================================="
echo -e "\n"

echo -e "Updating packages list >\n"
apt-get update

source ./categories/accessories.sh 
source ./categories/development.sh 
source ./categories/graphics.sh 
source ./categories/internet.sh 
source ./categories/multimedia.sh 
source ./categories/office.sh 
source ./categories/other.sh 
source ./categories/servers.sh 
source ./categories/settings.sh 
source ./categories/system.sh 

