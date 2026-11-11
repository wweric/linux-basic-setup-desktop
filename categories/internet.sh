#!/bin/bash

# ======================================================================
# name: internet.sh
# desc: install internet software via APT          
# ======================================================================

echo -e "\n"
echo -e "==============================================================="
echo -e "**** Internet ****"
echo -e "==============================================================="
echo -e "\n"

# ======================================================================
# 
# curl:             multi protocol data transfer (cmd)
#
# filezilla:		ftp client (gui)
# gftp:             ftp client (gui)
#
# firefox-esr:      web browser
#
# ======================================================================

packages=(
		
		"curl"
		"filezilla gftp"
		"firefox-esr"
)

apt install -y -q ${packages[*]}

