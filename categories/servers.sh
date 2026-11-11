#!/bin/bash

# ======================================================================
# name: servers.sh
# desc: install server software via APT         
# ======================================================================

echo -e "\n"
echo -e "==============================================================="
echo -e "**** Servers ****"
echo -e "==============================================================="
echo -e "\n"

# ======================================================================
#
# apache2:              web server and modules    
# mariadb:              mysql server
#
# ======================================================================

packages=(
		
		"apache2 libapache2-mod-authnz-external libapache2-mod-authnz-pam libapache2-mod-fcgid"
		"mariadb-server"
)

apt install -y -q ${packages[*]}

